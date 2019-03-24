.class Lcom/miui/internal/analytics/SaltGenerate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/analytics/SaltGenerate;->getKeyFromParams(Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/internal/net/KeyValuePair;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/internal/net/KeyValuePair;Lcom/miui/internal/net/KeyValuePair;)I
    .locals 0

    .line 32
    invoke-virtual {p1}, Lcom/miui/internal/net/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/internal/net/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/miui/internal/net/KeyValuePair;

    check-cast p2, Lcom/miui/internal/net/KeyValuePair;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/analytics/SaltGenerate$1;->a(Lcom/miui/internal/net/KeyValuePair;Lcom/miui/internal/net/KeyValuePair;)I

    move-result p1

    return p1
.end method
