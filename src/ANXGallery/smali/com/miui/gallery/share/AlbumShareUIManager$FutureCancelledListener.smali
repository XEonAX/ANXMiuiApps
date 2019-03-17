.class final Lcom/miui/gallery/share/AlbumShareUIManager$FutureCancelledListener;
.super Ljava/lang/Object;
.source "AlbumShareUIManager.java"

# interfaces
.implements Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/AlbumShareUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FutureCancelledListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
        "<TK;TT;>;"
    }
.end annotation


# instance fields
.field public final mDialog:Landroid/app/Dialog;

.field public final mListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<TK;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Landroid/app/Dialog;)V
    .locals 0
    .param p2, "dialog"    # Landroid/app/Dialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<TK;TT;>;",
            "Landroid/app/Dialog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lcom/miui/gallery/share/AlbumShareUIManager$FutureCancelledListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$FutureCancelledListener<TK;TT;>;"
    .local p1, "listener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<TK;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$FutureCancelledListener;->mListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    .line 260
    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$FutureCancelledListener;->mDialog:Landroid/app/Dialog;

    .line 261
    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 1
    .param p3, "errorCode"    # I
    .param p4, "cancel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;IZ)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lcom/miui/gallery/share/AlbumShareUIManager$FutureCancelledListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$FutureCancelledListener<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$FutureCancelledListener;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$FutureCancelledListener;->mListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$FutureCancelledListener;->mListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;->onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 278
    :cond_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    goto :goto_0
.end method
