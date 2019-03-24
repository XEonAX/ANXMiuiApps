package miui.upnp.service.controlpoint;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import miui.upnp.service.handler.ICompletionHandler;
import miui.upnp.service.handler.IEventListener;
import miui.upnp.service.handler.IInvokeCompletionHandler;
import miui.upnp.service.handler.IScanListener;
import miui.upnp.service.handler.ISubscribeCompletionHandler;
import miui.upnp.typedef.device.invocation.ActionInfo;
import miui.upnp.typedef.device.invocation.SubscriptionInfo;
import miui.upnp.typedef.device.urn.Urn;

public interface IUpnpControlPointService extends IInterface {

    public static abstract class Stub extends Binder implements IUpnpControlPointService {
        private static final String DESCRIPTOR = "miui.upnp.service.controlpoint.IUpnpControlPointService";
        static final int TRANSACTION_invoke = 5;
        static final int TRANSACTION_start = 1;
        static final int TRANSACTION_startScan = 3;
        static final int TRANSACTION_stop = 2;
        static final int TRANSACTION_stopScan = 4;
        static final int TRANSACTION_subscribe = 6;
        static final int TRANSACTION_unsubscribe = 7;

        private static class Proxy implements IUpnpControlPointService {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            public void start() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void stop() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void startScan(List<Urn> types, ICompletionHandler handler, IScanListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedList(types);
                    IBinder iBinder = null;
                    _data.writeStrongBinder(handler != null ? handler.asBinder() : null);
                    if (listener != null) {
                        iBinder = listener.asBinder();
                    }
                    _data.writeStrongBinder(iBinder);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void stopScan(ICompletionHandler handler) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(handler != null ? handler.asBinder() : null);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void invoke(ActionInfo info, IInvokeCompletionHandler handler) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (info != null) {
                        _data.writeInt(1);
                        info.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeStrongBinder(handler != null ? handler.asBinder() : null);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void subscribe(SubscriptionInfo info, ISubscribeCompletionHandler handler, IEventListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (info != null) {
                        _data.writeInt(1);
                        info.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    IBinder iBinder = null;
                    _data.writeStrongBinder(handler != null ? handler.asBinder() : null);
                    if (listener != null) {
                        iBinder = listener.asBinder();
                    }
                    _data.writeStrongBinder(iBinder);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void unsubscribe(SubscriptionInfo info, ICompletionHandler handler) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (info != null) {
                        _data.writeInt(1);
                        info.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeStrongBinder(handler != null ? handler.asBinder() : null);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IUpnpControlPointService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin == null || !(iin instanceof IUpnpControlPointService)) {
                return new Proxy(obj);
            }
            return (IUpnpControlPointService) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            String descriptor = DESCRIPTOR;
            if (code != 1598968902) {
                ActionInfo _arg0 = null;
                SubscriptionInfo _arg02;
                switch (code) {
                    case 1:
                        data.enforceInterface(descriptor);
                        start();
                        reply.writeNoException();
                        return true;
                    case 2:
                        data.enforceInterface(descriptor);
                        stop();
                        reply.writeNoException();
                        return true;
                    case 3:
                        data.enforceInterface(descriptor);
                        startScan(data.createTypedArrayList(Urn.CREATOR), miui.upnp.service.handler.ICompletionHandler.Stub.asInterface(data.readStrongBinder()), miui.upnp.service.handler.IScanListener.Stub.asInterface(data.readStrongBinder()));
                        reply.writeNoException();
                        return true;
                    case 4:
                        data.enforceInterface(descriptor);
                        stopScan(miui.upnp.service.handler.ICompletionHandler.Stub.asInterface(data.readStrongBinder()));
                        reply.writeNoException();
                        return true;
                    case 5:
                        data.enforceInterface(descriptor);
                        if (data.readInt() != 0) {
                            _arg0 = (ActionInfo) ActionInfo.CREATOR.createFromParcel(data);
                        }
                        invoke(_arg0, miui.upnp.service.handler.IInvokeCompletionHandler.Stub.asInterface(data.readStrongBinder()));
                        reply.writeNoException();
                        return true;
                    case 6:
                        data.enforceInterface(descriptor);
                        if (data.readInt() != 0) {
                            _arg02 = (SubscriptionInfo) SubscriptionInfo.CREATOR.createFromParcel(data);
                        }
                        subscribe(_arg02, miui.upnp.service.handler.ISubscribeCompletionHandler.Stub.asInterface(data.readStrongBinder()), miui.upnp.service.handler.IEventListener.Stub.asInterface(data.readStrongBinder()));
                        reply.writeNoException();
                        return true;
                    case 7:
                        data.enforceInterface(descriptor);
                        if (data.readInt() != 0) {
                            _arg02 = (SubscriptionInfo) SubscriptionInfo.CREATOR.createFromParcel(data);
                        }
                        unsubscribe(_arg02, miui.upnp.service.handler.ICompletionHandler.Stub.asInterface(data.readStrongBinder()));
                        reply.writeNoException();
                        return true;
                    default:
                        return super.onTransact(code, data, reply, flags);
                }
            }
            reply.writeString(descriptor);
            return true;
        }
    }

    void invoke(ActionInfo actionInfo, IInvokeCompletionHandler iInvokeCompletionHandler) throws RemoteException;

    void start() throws RemoteException;

    void startScan(List<Urn> list, ICompletionHandler iCompletionHandler, IScanListener iScanListener) throws RemoteException;

    void stop() throws RemoteException;

    void stopScan(ICompletionHandler iCompletionHandler) throws RemoteException;

    void subscribe(SubscriptionInfo subscriptionInfo, ISubscribeCompletionHandler iSubscribeCompletionHandler, IEventListener iEventListener) throws RemoteException;

    void unsubscribe(SubscriptionInfo subscriptionInfo, ICompletionHandler iCompletionHandler) throws RemoteException;
}
