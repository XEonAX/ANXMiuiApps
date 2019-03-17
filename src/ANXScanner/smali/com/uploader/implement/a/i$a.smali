.class final Lcom/uploader/implement/a/i$a;
.super Ljava/lang/Object;
.source "UploaderAction.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uploader/implement/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:I


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/uploader/implement/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/uploader/implement/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/uploader/implement/a/i$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lcom/uploader/implement/a/i$a;->a:I

    return-void
.end method

.method constructor <init>(Lcom/uploader/implement/a/a;Lcom/uploader/implement/d/b;)V
    .locals 1
    .param p1, "action"    # Lcom/uploader/implement/a/a;
    .param p2, "session"    # Lcom/uploader/implement/d/b;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/uploader/implement/a/i$a;->c:Ljava/lang/ref/WeakReference;

    .line 87
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/uploader/implement/a/i$a;->b:Ljava/lang/ref/WeakReference;

    .line 88
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 92
    iget v3, p1, Landroid/os/Message;->what:I

    sget v4, Lcom/uploader/implement/a/i$a;->a:I

    if-eq v3, v4, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v2

    .line 95
    :cond_1
    iget-object v3, p0, Lcom/uploader/implement/a/i$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uploader/implement/d/b;

    .line 96
    .local v1, "session":Lcom/uploader/implement/d/b;
    if-eqz v1, :cond_0

    .line 99
    iget-object v3, p0, Lcom/uploader/implement/a/i$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uploader/implement/a/a;

    .line 100
    .local v0, "action":Lcom/uploader/implement/a/a;
    if-eqz v0, :cond_0

    .line 104
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/uploader/implement/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/uploader/implement/a/a;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/c/a;)V

    .line 105
    const/4 v2, 0x1

    goto :goto_0
.end method
