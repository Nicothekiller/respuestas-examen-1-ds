from fastapi import FastAPI
from pydantic import BaseModel

from infra.task_service import TaskService


class TaskCreateRequest(BaseModel):
    title: str
    description: str | None = None
    priority: str = "MEDIUM"


class TaskResponse(BaseModel):
    title: str
    description: str | None = None
    priority: str
    status: str


app = FastAPI()
task_service = TaskService()


@app.post("/tasks", response_model=TaskResponse)
def create_task(payload: TaskCreateRequest) -> TaskResponse:
    task = task_service.create_task(
        title=payload.title,
        description=payload.description,
        priority=payload.priority,
    )
    return TaskResponse(
        title=task.title,
        description=task.description,
        priority=task.priority.value,
        status=task.status.value,
    )
