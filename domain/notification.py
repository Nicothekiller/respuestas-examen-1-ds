from abc import ABC, abstractmethod


class NotificationPolicy(ABC):
    @abstractmethod
    def should_notify(self, event: str) -> bool:
        raise NotImplementedError


class AlwaysNotify(NotificationPolicy):
    def should_notify(self, event: str) -> bool:
        return True


class NotifyOnDoneOnly(NotificationPolicy):
    def should_notify(self, event: str) -> bool:
        return event == "TASK_DONE"


class NotificationService:
    def __init__(self, policy: NotificationPolicy) -> None:
        self.policy = policy

    def notify(self, event: str, message: str) -> None:
        if self.policy.should_notify(event):
            print(f"[NOTIFICATION] {message}")
