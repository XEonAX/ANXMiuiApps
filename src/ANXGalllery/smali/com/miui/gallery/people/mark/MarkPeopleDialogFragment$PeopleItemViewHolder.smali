.class Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MarkPeopleDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeopleItemViewHolder"
.end annotation


# instance fields
.field private mCover:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    .line 278
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 279
    const v0, 0x7f1200d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder;->mCover:Landroid/widget/ImageView;

    .line 280
    return-void
.end method


# virtual methods
.method public bindView(Lcom/miui/gallery/people/model/People;)V
    .locals 2
    .param p1, "people"    # Lcom/miui/gallery/people/model/People;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->access$200(Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;Landroid/widget/ImageView;Lcom/miui/gallery/people/model/People;)V

    .line 284
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder$1;-><init>(Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    return-void
.end method
