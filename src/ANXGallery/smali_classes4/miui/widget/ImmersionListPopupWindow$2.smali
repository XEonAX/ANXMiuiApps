.class Lmiui/widget/ImmersionListPopupWindow$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/ImmersionListPopupWindow;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Uc:Lmiui/widget/ImmersionListPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/ImmersionListPopupWindow;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow$2;->Uc:Lmiui/widget/ImmersionListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 89
    iget-object p1, p0, Lmiui/widget/ImmersionListPopupWindow$2;->Uc:Lmiui/widget/ImmersionListPopupWindow;

    invoke-virtual {p1}, Lmiui/widget/ImmersionListPopupWindow;->dismiss()V

    .line 90
    return-void
.end method
