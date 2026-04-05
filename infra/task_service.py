from domain.factory import TaskFactory
from domain.task import Task


class TaskService:
    def create_task(self, title: str, description: str | None, priority: str) -> Task:
        return TaskFactory.create_task(
            title=title,
            description=description,
            priority=priority,
        )
