.class Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$2;
.super Ljava/lang/Object;
.source "MarkPeopleDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->configDataView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$2;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$2;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->access$000(Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;I)V

    .line 238
    return-void
.end method
