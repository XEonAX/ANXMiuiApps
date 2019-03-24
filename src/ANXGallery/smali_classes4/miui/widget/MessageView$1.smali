.class Lmiui/widget/MessageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/MessageView;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic UF:Lmiui/widget/MessageView;


# direct methods
.method constructor <init>(Lmiui/widget/MessageView;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lmiui/widget/MessageView$1;->UF:Lmiui/widget/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 85
    iget-object p1, p0, Lmiui/widget/MessageView$1;->UF:Lmiui/widget/MessageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lmiui/widget/MessageView;->setVisibility(I)V

    .line 86
    return-void
.end method
