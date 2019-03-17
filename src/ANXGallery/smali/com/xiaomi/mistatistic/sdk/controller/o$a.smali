.class public Lcom/xiaomi/mistatistic/sdk/controller/o$a;
.super Ljava/lang/Object;
.source "RemoteDataUploadManager.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/o;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/o;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->a:Lcom/xiaomi/mistatistic/sdk/controller/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->a:Lcom/xiaomi/mistatistic/sdk/controller/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a(Z)V

    .line 82
    return-void
.end method
