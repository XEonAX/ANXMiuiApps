.class final Lcom/xiaomi/scanner/util/ToastUtils$1;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/xiaomi/scanner/util/ToastUtils$1;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ToastUtils$1;->val$s:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/ToastUtils;->access$000(Ljava/lang/String;Z)V

    .line 26
    return-void
.end method
