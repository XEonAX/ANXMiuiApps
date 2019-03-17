.class final Lcom/miui/gallery/util/DocumentProviderUtils$2;
.super Ljava/lang/Object;
.source "DocumentProviderUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/DocumentProviderUtils;->createAccessIntent(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/miui/gallery/util/DocumentProviderUtils$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/miui/gallery/util/DocumentProviderUtils$2;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/miui/gallery/util/DocumentProviderUtils$2;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/miui/gallery/util/DocumentProviderUtils$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/gallery/util/DocumentProviderUtils$2;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/miui/gallery/util/DocumentProviderUtils$2;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 203
    return-void
.end method
