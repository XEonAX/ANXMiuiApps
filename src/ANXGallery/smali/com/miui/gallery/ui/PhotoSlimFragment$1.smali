.class Lcom/miui/gallery/ui/PhotoSlimFragment$1;
.super Ljava/lang/Object;
.source "PhotoSlimFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoSlimFragment;->onSlimProgress(JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoSlimFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoSlimFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoSlimFragment;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoSlimFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoSlimFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->access$000(Lcom/miui/gallery/ui/PhotoSlimFragment;)V

    .line 97
    return-void
.end method
