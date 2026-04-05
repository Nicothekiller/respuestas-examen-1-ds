from domain.task import Task, TaskPriority


class TaskFactory:
    @staticmethod
    def create_task(
        title: str,
        description: str | None = None,
        priority: str | TaskPriority = TaskPriority.MEDIUM,
    ) -> Task:
        parsed_priority = (
            priority if isinstance(priority, TaskPriority) else TaskPriority(priority)
        )
        return Task(
            title=title,
            description=description,
            priority=parsed_priority,
        )
