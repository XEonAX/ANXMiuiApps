.class final Lcom/xiaomi/push/service/awake/AwakeUploadHelper$1;
.super Ljava/lang/Object;
.source "AwakeUploadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$awakeInfo:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$eventType:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/xiaomi/push/service/awake/AwakeUploadHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/push/service/awake/AwakeUploadHelper$1;->val$awakeInfo:Ljava/lang/String;

    iput p3, p0, Lcom/xiaomi/push/service/awake/AwakeUploadHelper$1;->val$eventType:I

    iput-object p4, p0, Lcom/xiaomi/push/service/awake/AwakeUploadHelper$1;->val$description:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xiaomi/push/service/awake/AwakeUploadHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/push/service/awake/AwakeUploadHelper$1;->val$awakeInfo:Ljava/lang/String;

    iget v2, p0, Lcom/xiaomi/push/service/awake/AwakeUploadHelper$1;->val$eventType:I

    iget-object v3, p0, Lcom/xiaomi/push/service/awake/AwakeUploadHelper$1;->val$description:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->access$000(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    return-void
.end method
