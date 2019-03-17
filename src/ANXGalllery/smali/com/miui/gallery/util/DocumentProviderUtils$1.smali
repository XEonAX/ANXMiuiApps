.class final Lcom/miui/gallery/util/DocumentProviderUtils$1;
.super Ljava/lang/Object;
.source "DocumentProviderUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/DocumentProviderUtils;->firstEntrancyPermFailed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->setPriorStorage(Z)V

    .line 124
    return-void
.end method
