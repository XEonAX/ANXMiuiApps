.class Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$2;
.super Ljava/lang/Object;
.source "DoodleMenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperationUpdate()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->access$500(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)V

    .line 135
    return-void
.end method
