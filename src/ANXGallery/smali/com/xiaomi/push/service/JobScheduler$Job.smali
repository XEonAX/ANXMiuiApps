.class public abstract Lcom/xiaomi/push/service/JobScheduler$Job;
.super Ljava/lang/Object;
.source "JobScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/JobScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Job"
.end annotation


# instance fields
.field protected type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/xiaomi/push/service/JobScheduler$Job;->type:I

    .line 48
    return-void
.end method
