.class public interface abstract Lcom/miui/gallery/cloud/Operation;
.super Ljava/lang/Object;
.source "Operation.java"


# virtual methods
.method public abstract checkState(Lcom/miui/gallery/cloud/RequestItemBase;)I
.end method

.method public abstract execute(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
