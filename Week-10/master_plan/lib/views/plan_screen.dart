import '../models/data_layer.dart';
import 'package:flutter/material.dart';
import '../provider/plan_provider.dart';

class PlanScreen extends StatefulWidget {
  final Plan plan;
  const PlanScreen({super.key, required this.plan});

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late ScrollController scrollController;
  late Plan plan; // mutable local copy

  @override
  void initState() {
    super.initState();
    plan = widget.plan; // set initial
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  @override
  Widget build(BuildContext context) {
    ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(plan.name)), // pake plan (bukan _plan)
      body: ValueListenableBuilder<List<Plan>>(
        valueListenable: plansNotifier,
        builder: (context, plans, child) {
          Plan currentPlan = plans.firstWhere((p) => p.name == plan.name);
          return Column(
            children: [
              Expanded(child: _buildList(currentPlan)),
              SafeArea(child: Text(currentPlan.completenessMessage)),
            ],
          );
        },
      ),
      floatingActionButton: _buildAddTaskButton(context),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  Widget _buildAddTaskButton(BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        // ambil index dari provider dan update list di provider
        int planIndex = planNotifier.value.indexWhere(
          (p) => p.name == plan.name,
        );

        List<Task> updatedTasks = List<Task>.from(plan.tasks)
          ..add(const Task());

        // update provider
        planNotifier.value = List<Plan>.from(planNotifier.value)
          ..[planIndex] = Plan(name: plan.name, tasks: updatedTasks);

        // update local plan so AppBar (and other UI outside ValueListenableBuilder) updates
        setState(() {
          plan = Plan(name: plan.name, tasks: updatedTasks);
        });
      },
    );
  }

  Widget _buildList(Plan currentPlan) {
    return ListView.builder(
      controller: scrollController,
      itemCount: currentPlan.tasks.length,
      itemBuilder: (context, index) =>
          _buildTaskTile(currentPlan.tasks[index], index, context),
    );
  }

  Widget _buildTaskTile(Task task, int index, BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);

    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          int planIndex = planNotifier.value.indexWhere(
            (p) => p.name == plan.name,
          );

          Plan currentPlan = planNotifier.value[planIndex];

          List<Task> updatedTasks = List<Task>.from(currentPlan.tasks)
            ..[index] = Task(
              description: task.description,
              complete: selected ?? false,
            );

          planNotifier.value = List<Plan>.from(planNotifier.value)
            ..[planIndex] = Plan(name: currentPlan.name, tasks: updatedTasks);

          // update local plan copy too
          setState(() {
            plan = Plan(name: currentPlan.name, tasks: updatedTasks);
          });
        },
      ),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          int planIndex = planNotifier.value.indexWhere(
            (p) => p.name == plan.name,
          );

          Plan currentPlan = planNotifier.value[planIndex];

          List<Task> updatedTasks = List<Task>.from(currentPlan.tasks)
            ..[index] = Task(description: text, complete: task.complete);

          planNotifier.value = List<Plan>.from(planNotifier.value)
            ..[planIndex] = Plan(name: currentPlan.name, tasks: updatedTasks);

          setState(() {
            plan = Plan(name: currentPlan.name, tasks: updatedTasks);
          });
        },
      ),
    );
  }
}
