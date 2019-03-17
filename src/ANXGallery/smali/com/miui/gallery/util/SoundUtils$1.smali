.class final Lcom/miui/gallery/util/SoundUtils$1;
.super Ljava/lang/Object;
.source "SoundUtils.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/SoundUtils;->playSoundForOperation(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$operationType:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/miui/gallery/util/SoundUtils$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/miui/gallery/util/SoundUtils$1;->val$operationType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/SoundUtils$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 2
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/util/SoundUtils$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/miui/gallery/util/SoundUtils$1;->val$operationType:I

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SoundUtils;->access$000(Landroid/content/Context;I)V

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method
