.class public final Lcom/miui/internal/R$raw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "raw"
.end annotation


# static fields
.field public static numberpicker_value_change:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2556
    const/high16 v0, 0x100f0000

    sput v0, Lcom/miui/internal/R$raw;->numberpicker_value_change:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
