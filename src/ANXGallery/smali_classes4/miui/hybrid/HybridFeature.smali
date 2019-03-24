.class public interface abstract Lmiui/hybrid/HybridFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hybrid/HybridFeature$Mode;
    }
.end annotation


# virtual methods
.method public abstract getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;
.end method

.method public abstract invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
.end method

.method public abstract setParams(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
