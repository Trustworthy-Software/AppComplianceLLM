.class public final Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;
.super Ljava/lang/Object;
.source "GetTopicsRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGetTopicsRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetTopicsRequest.kt\nandroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,87:1\n1#2:88\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;",
        "",
        "()V",
        "adsSdkName",
        "",
        "shouldRecordObservation",
        "",
        "build",
        "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;",
        "setAdsSdkName",
        "setShouldRecordObservation",
        "ads-adservices_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private adsSdkName:Ljava/lang/String;

.field private shouldRecordObservation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;->adsSdkName:Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;->shouldRecordObservation:Z

    .line 55
    return-void
.end method


# virtual methods
.method public final build()Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;
    .locals 3

    .line 83
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;->adsSdkName:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;->adsSdkName:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;->shouldRecordObservation:Z

    invoke-direct {v0, v1, v2}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 88
    :cond_1
    const/4 v0, 0x0

    .line 83
    .local v0, "$i$a$-check-GetTopicsRequest$Builder$build$1":I
    nop

    .end local v0    # "$i$a$-check-GetTopicsRequest$Builder$build$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "adsSdkName must be set"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setAdsSdkName(Ljava/lang/String;)Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;
    .locals 2
    .param p1, "adsSdkName"    # Ljava/lang/String;

    const-string v0, "adsSdkName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;

    .line 88
    .local v0, "$this$setAdsSdkName_u24lambda_u240":Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;
    const/4 v1, 0x0

    .line 67
    .local v1, "$i$a$-apply-GetTopicsRequest$Builder$setAdsSdkName$1":I
    iput-object p1, v0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;->adsSdkName:Ljava/lang/String;

    .end local v0    # "$this$setAdsSdkName_u24lambda_u240":Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;
    .end local v1    # "$i$a$-apply-GetTopicsRequest$Builder$setAdsSdkName$1":I
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;

    return-object v0
.end method

.method public final setShouldRecordObservation(Z)Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;
    .locals 2
    .param p1, "shouldRecordObservation"    # Z

    .line 77
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;

    .local v0, "$this$setShouldRecordObservation_u24lambda_u241":Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;
    const/4 v1, 0x0

    .line 78
    .local v1, "$i$a$-apply-GetTopicsRequest$Builder$setShouldRecordObservation$1":I
    iput-boolean p1, v0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;->shouldRecordObservation:Z

    .line 79
    nop

    .line 77
    .end local v0    # "$this$setShouldRecordObservation_u24lambda_u241":Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;
    .end local v1    # "$i$a$-apply-GetTopicsRequest$Builder$setShouldRecordObservation$1":I
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;

    .line 79
    return-object v0
.end method
