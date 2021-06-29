package com.germanfica.service;

import com.germanfica.model.TodoData;
import com.germanfica.model.TodoItem;

public interface TodoItemService {
    void addItem(TodoItem toAdd);

    void removeItem(int id);

    TodoItem getItem(int id);

    void updateItem(TodoItem toUpdate);

    TodoData getData();
}
