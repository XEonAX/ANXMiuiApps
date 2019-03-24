.class public interface abstract annotation Lmiui/imagefilters/FilterParamType;
.super Ljava/lang/Object;
.source "FilterParamType.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lmiui/imagefilters/FilterParamType;
        value = .enum Lmiui/imagefilters/FilterParamType$ParamType;->DEFAULT:Lmiui/imagefilters/FilterParamType$ParamType;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/imagefilters/FilterParamType$ParamType;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract value()Lmiui/imagefilters/FilterParamType$ParamType;
.end method
