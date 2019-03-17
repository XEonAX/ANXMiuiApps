.class public Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;
.super Ljava/lang/Object;
.source "GalleryRecyclerView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecyclerContextMenuInfo"
.end annotation


# instance fields
.field public position:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;->setValues(I)V

    .line 168
    return-void
.end method


# virtual methods
.method public setValues(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;->position:I

    .line 172
    return-void
.end method
