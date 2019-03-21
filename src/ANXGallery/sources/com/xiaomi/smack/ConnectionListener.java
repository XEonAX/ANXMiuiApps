package com.xiaomi.smack;

public interface ConnectionListener {
    void connectionClosed(Connection connection, int i, Exception exception);

    void connectionStarted(Connection connection);

    void reconnectionFailed(Connection connection, Exception exception);

    void reconnectionSuccessful(Connection connection);
}
