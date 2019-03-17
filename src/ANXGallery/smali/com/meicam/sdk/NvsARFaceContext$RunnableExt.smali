.class public Lcom/meicam/sdk/NvsARFaceContext$RunnableExt;
.super Ljava/lang/Object;
.source "NvsARFaceContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/sdk/NvsARFaceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RunnableExt"
.end annotation


# instance fields
.field mCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

.field public mItemPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/meicam/sdk/NvsARFaceContext;


# direct methods
.method constructor <init>(Lcom/meicam/sdk/NvsARFaceContext;Ljava/lang/String;Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;)V
    .locals 1

    .prologue
    .line 44
    iput-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext$RunnableExt;->this$0:Lcom/meicam/sdk/NvsARFaceContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext$RunnableExt;->mCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    .line 45
    iput-object p2, p0, Lcom/meicam/sdk/NvsARFaceContext$RunnableExt;->mItemPath:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/meicam/sdk/NvsARFaceContext$RunnableExt;->mCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    .line 47
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext$RunnableExt;->mCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext$RunnableExt;->mCallback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    iget-object v1, p0, Lcom/meicam/sdk/NvsARFaceContext$RunnableExt;->mItemPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;->notifyFaceItemLoadingBegin(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method
