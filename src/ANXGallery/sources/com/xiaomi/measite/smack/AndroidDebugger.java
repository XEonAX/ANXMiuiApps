package com.xiaomi.measite.smack;

import com.xiaomi.channel.commonutils.android.SystemUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.slim.Blob;
import com.xiaomi.smack.Connection;
import com.xiaomi.smack.ConnectionListener;
import com.xiaomi.smack.PacketListener;
import com.xiaomi.smack.debugger.SmackDebugger;
import com.xiaomi.smack.filter.PacketFilter;
import com.xiaomi.smack.packet.Packet;
import java.text.SimpleDateFormat;
import java.util.Date;

public class AndroidDebugger implements SmackDebugger {
    public static boolean printInterpreted;
    private final String TAG = "[Slim] ";
    private ConnectionListener connListener = null;
    private Connection connection = null;
    private SimpleDateFormat dateFormatter = new SimpleDateFormat("hh:mm:ss aaa");
    private Listener readListener = null;
    private Listener writeListener = null;

    class Listener implements PacketListener, PacketFilter {
        String rcvOrSent;

        Listener(boolean isReadListener) {
            this.rcvOrSent = isReadListener ? " RCV " : " Sent ";
        }

        public boolean accept(Packet packet) {
            return true;
        }

        public void processPacket(Packet packet) {
            if (AndroidDebugger.printInterpreted) {
                MyLog.v("[Slim] " + AndroidDebugger.this.dateFormatter.format(new Date()) + this.rcvOrSent + " PKT " + packet.toXML());
            } else {
                MyLog.v("[Slim] " + AndroidDebugger.this.dateFormatter.format(new Date()) + this.rcvOrSent + " PKT [" + packet.getChannelId() + "," + packet.getPacketID() + "]");
            }
        }

        public void process(Blob blob) {
            if (AndroidDebugger.printInterpreted) {
                MyLog.v("[Slim] " + AndroidDebugger.this.dateFormatter.format(new Date()) + this.rcvOrSent + blob.toString());
            } else {
                MyLog.v("[Slim] " + AndroidDebugger.this.dateFormatter.format(new Date()) + this.rcvOrSent + " Blob [" + blob.getCmd() + "," + blob.getChannelId() + "," + blob.getPacketID() + "]");
            }
        }
    }

    static {
        boolean z = true;
        if (SystemUtils.getMIUIType() != 1) {
            z = false;
        }
        printInterpreted = z;
    }

    public AndroidDebugger(Connection connection) {
        this.connection = connection;
        createDebug();
    }

    private void createDebug() {
        this.readListener = new Listener(true);
        this.writeListener = new Listener(false);
        this.connection.addPacketListener(this.readListener, this.readListener);
        this.connection.addPacketSendingListener(this.writeListener, this.writeListener);
        this.connListener = new ConnectionListener() {
            public void connectionClosed(Connection conn, int reason, Exception ex) {
                MyLog.v("[Slim] " + AndroidDebugger.this.dateFormatter.format(new Date()) + " Connection closed (" + AndroidDebugger.this.connection.hashCode() + ")");
            }

            public void reconnectionFailed(Connection conn, Exception e) {
                MyLog.v("[Slim] " + AndroidDebugger.this.dateFormatter.format(new Date()) + " Reconnection failed due to an exception (" + AndroidDebugger.this.connection.hashCode() + ")");
                e.printStackTrace();
            }

            public void reconnectionSuccessful(Connection conn) {
                MyLog.v("[Slim] " + AndroidDebugger.this.dateFormatter.format(new Date()) + " Connection reconnected (" + AndroidDebugger.this.connection.hashCode() + ")");
            }

            public void connectionStarted(Connection conn) {
                MyLog.v("[Slim] " + AndroidDebugger.this.dateFormatter.format(new Date()) + " Connection started (" + AndroidDebugger.this.connection.hashCode() + ")");
            }
        };
    }
}
