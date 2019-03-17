.class Lcn/kuaipan/android/kss/upload/UploadTaskStore$1;
.super Lcn/kuaipan/android/utils/SyncAccessor;
.source "UploadTaskStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/kss/upload/UploadTaskStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/kuaipan/android/kss/upload/UploadTaskStore;


# direct methods
.method constructor <init>(Lcn/kuaipan/android/kss/upload/UploadTaskStore;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/kuaipan/android/kss/upload/UploadTaskStore;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 275
    iput-object p1, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$1;->this$0:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-direct {p0, p2}, Lcn/kuaipan/android/utils/SyncAccessor;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public varargs handleAccess(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "what"    # I
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 278
    const/4 v2, 0x0

    .line 279
    .local v2, "result":Ljava/lang/Object;
    packed-switch p1, :pswitch_data_0

    .line 310
    invoke-super {p0, p1, p2}, Lcn/kuaipan/android/utils/SyncAccessor;->handleAccess(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 312
    .end local v2    # "result":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 281
    .restart local v2    # "result":Ljava/lang/Object;
    :pswitch_0
    aget-object v5, p2, v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 282
    .local v0, "hash":I
    const/4 v5, 0x1

    aget-object v1, p2, v5

    check-cast v1, Lcn/kuaipan/android/kss/upload/KssUploadInfo;

    .line 283
    .local v1, "info":Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    const/4 v5, 0x2

    aget-object v4, p2, v5

    check-cast v4, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;

    .line 284
    .local v4, "uploadChunkInfoPersist":Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;
    iget-object v5, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$1;->this$0:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-static {v5}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->access$000(Lcn/kuaipan/android/kss/upload/UploadTaskStore;)Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    move-result-object v5

    invoke-virtual {v5, v0, v1, v4}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->update(ILcn/kuaipan/android/kss/upload/KssUploadInfo;Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;)V

    goto :goto_0

    .line 288
    .end local v0    # "hash":I
    .end local v1    # "info":Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    .end local v4    # "uploadChunkInfoPersist":Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;
    :pswitch_1
    aget-object v5, p2, v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 289
    .restart local v0    # "hash":I
    iget-object v5, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$1;->this$0:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-static {v5}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->access$000(Lcn/kuaipan/android/kss/upload/UploadTaskStore;)Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->delete(I)V

    goto :goto_0

    .line 293
    .end local v0    # "hash":I
    :pswitch_2
    aget-object v5, p2, v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 294
    .restart local v0    # "hash":I
    iget-object v5, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$1;->this$0:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-static {v5}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->access$000(Lcn/kuaipan/android/kss/upload/UploadTaskStore;)Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->queryPos(I)Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;

    move-result-object v2

    .line 295
    .local v2, "result":Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;
    goto :goto_0

    .line 298
    .end local v0    # "hash":I
    .local v2, "result":Ljava/lang/Object;
    :pswitch_3
    aget-object v5, p2, v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 300
    .restart local v0    # "hash":I
    iget-object v5, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$1;->this$0:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-static {v5}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->access$000(Lcn/kuaipan/android/kss/upload/UploadTaskStore;)Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    move-result-object v5

    invoke-static {}, Lcn/kuaipan/android/utils/OAuthTimeUtils;->currentTime()J

    move-result-wide v6

    const-wide/32 v8, 0x516bc00

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->deleteBefore(J)V

    .line 303
    :try_start_0
    iget-object v5, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$1;->this$0:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-static {v5}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->access$000(Lcn/kuaipan/android/kss/upload/UploadTaskStore;)Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    move-result-object v5

    iget-object v6, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$1;->this$0:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-static {v6}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->access$100(Lcn/kuaipan/android/kss/upload/UploadTaskStore;)Lcn/kuaipan/android/kss/IDataFactory;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->queryKss(ILcn/kuaipan/android/kss/IDataFactory;)Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "result":Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    goto :goto_0

    .line 304
    .local v2, "result":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 305
    .local v3, "t":Ljava/lang/Throwable;
    const-string v5, "UploadTaskStore"

    const-string v6, "Meet exception when parser kss from db"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
