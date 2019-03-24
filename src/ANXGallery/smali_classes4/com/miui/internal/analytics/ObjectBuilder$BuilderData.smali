.class Lcom/miui/internal/analytics/ObjectBuilder$BuilderData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/analytics/ObjectBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BuilderData"
.end annotation


# instance fields
.field ad:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end field

.field ae:Ljava/lang/String;

.field final synthetic af:Lcom/miui/internal/analytics/ObjectBuilder;


# direct methods
.method constructor <init>(Lcom/miui/internal/analytics/ObjectBuilder;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/miui/internal/analytics/ObjectBuilder$BuilderData;->af:Lcom/miui/internal/analytics/ObjectBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/miui/internal/analytics/ObjectBuilder$BuilderData;->ad:Ljava/lang/Class;

    .line 17
    iput-object p3, p0, Lcom/miui/internal/analytics/ObjectBuilder$BuilderData;->ae:Ljava/lang/String;

    .line 18
    return-void
.end method
