.class Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder$1;
.super Ljava/lang/Object;
.source "MarkPeopleDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder;->bindView(Lcom/miui/gallery/people/model/People;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder;


# direct methods
.method constructor <init>(Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder$1;->this$1:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder$1;->this$1:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder;

    iget-object v0, v0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder$1;->this$1:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder;

    invoke-virtual {v1}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->access$000(Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;I)V

    .line 288
    return-void
.end method
