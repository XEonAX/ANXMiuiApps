.class final Lcom/miui/gallery/util/DebugUtil$3;
.super Ljava/lang/Object;
.source "DebugUtil.java"

# interfaces
.implements Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/DebugUtil;->correctPhotoTime(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/miui/gallery/util/DebugUtil$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleteProcess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/miui/gallery/util/DebugUtil$3;->val$context:Landroid/content/Context;

    const v1, 0x7f0c0136

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 193
    return-void
.end method
