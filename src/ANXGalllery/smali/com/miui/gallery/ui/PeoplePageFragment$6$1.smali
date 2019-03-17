.class Lcom/miui/gallery/ui/PeoplePageFragment$6$1;
.super Ljava/lang/Object;
.source "PeoplePageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PeoplePageFragment$6;->onConfirm(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PeoplePageFragment$6;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PeoplePageFragment$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PeoplePageFragment$6;

    .prologue
    .line 752
    iput-object p1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$6$1;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$6$1;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$6;

    iget-object v0, v0, Lcom/miui/gallery/ui/PeoplePageFragment$6;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 756
    return-void
.end method
