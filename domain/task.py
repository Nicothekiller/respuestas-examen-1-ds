from dataclasses import dataclass, field
from enum import Enum


class TaskStatus(str, Enum):
    OPEN = "OPEN"
    IN_PROGRESS = "IN_PROGRESS"
    DONE = "DONE"


class TaskPriority(str, Enum):
    LOW = "LOW"
    MEDIUM = "MEDIUM"
    HIGH = "HIGH"


@dataclass
class Task:
    title: str
    description: str | None = None
    priority: TaskPriority = TaskPriority.MEDIUM
    status: TaskStatus = field(default=TaskStatus.OPEN, init=False)

    def __post_init__(self) -> None:
        if not self.title or not self.title.strip():
            raise ValueError("title no puede estar vacío")

        if not isinstance(self.priority, TaskPriority):
            try:
                self.priority = TaskPriority(self.priority)
            except ValueError as exc:
                raise ValueError("priority inválida") from exc

        self.status = TaskStatus.OPEN
