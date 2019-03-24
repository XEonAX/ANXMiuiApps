.class public Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionItem"
.end annotation


# instance fields
.field public icon:I

.field public id:I

.field public label:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;->label:Ljava/lang/CharSequence;

    .line 152
    iput p2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;->icon:I

    .line 153
    iput p3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;->id:I

    .line 154
    return-void
.end method
