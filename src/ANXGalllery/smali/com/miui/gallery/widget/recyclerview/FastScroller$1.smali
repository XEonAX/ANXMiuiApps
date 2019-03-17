.class Lcom/miui/gallery/widget/recyclerview/FastScroller$1;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/recyclerview/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/recyclerview/FastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/recyclerview/FastScroller;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$1;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$1;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->hide(I)V

    .line 155
    return-void
.end method
