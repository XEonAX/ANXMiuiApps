package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.Context;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.deviceprovider.UploadStatusController;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class RetryRequest {
    public static int tryAGroupItems(Account account, GalleryExtendedAuthToken extToken, ArrayList<? extends RequestItemBase> group, Operation operation) throws Exception {
        long[] retryAfter = new long[1];
        int result = 0;
        for (int i = 0; i < 3 && !group.isEmpty(); i++) {
            retryAfter[0] = 0;
            result = tryAGroupOnce(account, extToken, group, operation, retryAfter);
            if (result != 0) {
                break;
            }
            if (retryAfter[0] > 0) {
                Thread.sleep(retryAfter[0] * 1000);
            }
        }
        if (result != 0) {
            return result;
        }
        if (group.isEmpty()) {
            return 0;
        }
        Log.w("RetryRequest", "remain count=" + group.size());
        setAllStatus(group.iterator(), 1);
        return 3;
    }

    private static int tryAGroupOnce(Account account, GalleryExtendedAuthToken extToken, ArrayList<? extends RequestItemBase> group, Operation operation, long[] retryAfter) throws Exception {
        RequestItemBase retryItem = null;
        Iterator<? extends RequestItemBase> iter = group.iterator();
        while (true) {
            if (retryItem == null && !iter.hasNext()) {
                return 0;
            }
            RequestItemBase item;
            if (retryItem != null) {
                item = retryItem;
            } else {
                item = (RequestItemBase) iter.next();
            }
            retryItem = null;
            if (item.getStatus() != 0) {
                iter.remove();
                Log.d("RetryRequest", item + " is canceled, status=" + item.getStatus());
            } else {
                int checkState = operation.checkState(item);
                switch (checkState) {
                    case 2:
                    case 3:
                        item.compareAndSetStatus(0, 1);
                        setAllStatus(iter, 1);
                        return checkState;
                    default:
                        GallerySyncResult result = GallerySyncResult.Ok;
                        try {
                            UploadStatusController.getInstance().start(item);
                            switch (operation.execute(account, extToken, null, item)) {
                                case NeedReRequest:
                                    if (item.kssRetryTimes < 3) {
                                        retryItem = item;
                                        break;
                                    }
                                    item.compareAndSetStatus(0, 1);
                                    setAllStatus(iter, 1);
                                    UploadStatusController.getInstance().end(item);
                                    return 5;
                                case Ok:
                                    iter.remove();
                                    item.compareAndSetStatus(0, 2);
                                    break;
                                case NotRetryError:
                                    iter.remove();
                                    item.compareAndSetStatus(0, 3);
                                    break;
                                case NotContinueError:
                                    item.compareAndSetStatus(0, 3);
                                    setAllStatus(iter, 3);
                                    UploadStatusController.getInstance().end(item);
                                    return 3;
                                case RetryError:
                                    if (item.kssRetryTimes < 3) {
                                        if (item.createRetryTimes < 3 && item.commitRetryTimes < 3 && item.otherRetryTimes < 3) {
                                            if (retryAfter[0] < item.retryAfter) {
                                                retryAfter[0] = item.retryAfter;
                                                break;
                                            }
                                        }
                                        iter.remove();
                                        item.compareAndSetStatus(0, 3);
                                        break;
                                    }
                                    item.compareAndSetStatus(0, 1);
                                    setAllStatus(iter, 1);
                                    UploadStatusController.getInstance().end(item);
                                    return 5;
                                    break;
                                case Cancel:
                                    item.compareAndSetStatus(0, 3);
                                    setAllStatus(iter, 3);
                                    UploadStatusController.getInstance().end(item);
                                    return 2;
                                case AlbumNotEmpty:
                                case AlbumNotExist:
                                    iter.remove();
                                    item.compareAndSetStatus(0, 3);
                                    break;
                                case NotRetryCurrent:
                                    iter.remove();
                                    item.compareAndSetStatus(0, 1);
                                    break;
                            }
                            UploadStatusController.getInstance().end(item);
                            break;
                        } catch (Object e) {
                            Log.e("RetryRequest", item + " retriable exception", e);
                            item.compareAndSetStatus(0, 1);
                            setAllStatus(iter, 1);
                            UploadStatusController.getInstance().end(item);
                            return 3;
                        } catch (Object e2) {
                            Log.e("RetryRequest", item + " interrupt exception", e2);
                            item.compareAndSetStatus(0, 1);
                            setAllStatus(iter, 1);
                            UploadStatusController.getInstance().end(item);
                            return 3;
                        } catch (Object e22) {
                            Log.e("RetryRequest", item + " authentication exception", e22);
                            item.compareAndSetStatus(0, 1);
                            setAllStatus(iter, 1);
                            UploadStatusController.getInstance().end(item);
                            return 3;
                        } catch (Throwable th) {
                            UploadStatusController.getInstance().end(item);
                            throw th;
                        }
                }
            }
        }
    }

    private static void setAllStatus(Iterator<? extends RequestItemBase> it, int status) {
        while (it.hasNext()) {
            ((RequestItemBase) it.next()).compareAndSetStatus(0, status);
        }
    }

    public static int doUpDownDeleteItemsInBackground(Context context, Account account, GalleryExtendedAuthToken extToken, List<? extends RequestItemBase> requestItems, Operation upDownloadCloud) throws Exception {
        return doUpDownDeleteItems(context, account, extToken, requestItems, upDownloadCloud);
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x008e  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0078  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0093  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x008d A:{SYNTHETIC} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int doUpDownDeleteItems(Context context, Account account, GalleryExtendedAuthToken extToken, List<? extends RequestItemBase> requestItems, Operation upDownloadCloud) throws Exception {
        ArrayList<RequestItemBase> requestItemsAGroup = new ArrayList();
        int i = 0;
        while (i < requestItems.size()) {
            boolean needAddInNewGroup = false;
            RequestItemBase requestItem = (RequestItemBase) requestItems.get(i);
            int result;
            if (requestItemsAGroup.isEmpty() || requestItem.isInSameAlbum((RequestItemBase) requestItemsAGroup.get(requestItemsAGroup.size() - 1))) {
                requestItemsAGroup.add(requestItem);
                if (requestItemsAGroup.size() < requestItem.getRequestLimitAGroup() && i < requestItems.size() - 1) {
                }
                Log.d("RetryRequest", "do " + upDownloadCloud.getClass() + " a group items:" + i);
                if (requestItem.supportMultiRequest()) {
                    result = tryAGroupItems(account, extToken, requestItemsAGroup, upDownloadCloud);
                } else {
                    RequestItemBase multRequestItem = new RequestMultiItem(requestItemsAGroup, requestItem.priority);
                    ArrayList<RequestItemBase> multRequestGroup = new ArrayList();
                    multRequestGroup.add(multRequestItem);
                    result = tryAGroupItems(account, extToken, multRequestGroup, upDownloadCloud);
                }
                if (result == 0) {
                    return result;
                }
                Log.v("RetryRequest", "finish one loop for upload");
                requestItemsAGroup.clear();
                if (needAddInNewGroup) {
                    requestItemsAGroup.add(requestItem);
                }
            } else {
                Log.d("RetryRequest", "requestItem in this group, try this group and add this item later.");
                needAddInNewGroup = true;
                Log.d("RetryRequest", "do " + upDownloadCloud.getClass() + " a group items:" + i);
                if (requestItem.supportMultiRequest()) {
                }
                if (result == 0) {
                }
            }
            i++;
        }
        return 0;
    }
}
