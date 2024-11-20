.class public final Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;
.super Ljava/lang/Object;
.source "DeletionRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\r\u001a\u00020\u000eJ\u0014\u0010\u000f\u001a\u00020\u00002\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u0014\u0010\u0011\u001a\u00020\u00002\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;",
        "",
        "deletionMode",
        "",
        "matchBehavior",
        "(II)V",
        "domainUris",
        "",
        "Landroid/net/Uri;",
        "end",
        "Ljava/time/Instant;",
        "originUris",
        "start",
        "build",
        "Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;",
        "setDomainUris",
        "setEnd",
        "setOriginUris",
        "setStart",
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
.field private final deletionMode:I

.field private domainUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private end:Ljava/time/Instant;

.field private final matchBehavior:I

.field private originUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private start:Ljava/time/Instant;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "deletionMode"    # I
    .param p2, "matchBehavior"    # I

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->deletionMode:I

    .line 154
    iput p2, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->matchBehavior:I

    .line 156
    sget-object v0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    const-string v1, "MIN"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->start:Ljava/time/Instant;

    .line 157
    sget-object v0, Ljava/time/Instant;->MAX:Ljava/time/Instant;

    const-string v1, "MAX"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->end:Ljava/time/Instant;

    .line 158
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->domainUris:Ljava/util/List;

    .line 159
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->originUris:Ljava/util/List;

    .line 152
    return-void
.end method


# virtual methods
.method public final build()Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;
    .locals 8

    .line 203
    new-instance v7, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;

    .line 204
    iget v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->deletionMode:I

    .line 205
    iget v2, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->matchBehavior:I

    .line 206
    iget-object v3, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->start:Ljava/time/Instant;

    .line 207
    iget-object v4, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->end:Ljava/time/Instant;

    .line 208
    iget-object v5, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->domainUris:Ljava/util/List;

    .line 209
    iget-object v6, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->originUris:Ljava/util/List;

    .line 203
    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;-><init>(IILjava/time/Instant;Ljava/time/Instant;Ljava/util/List;Ljava/util/List;)V

    return-object v7
.end method

.method public final setDomainUris(Ljava/util/List;)Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;
    .locals 2
    .param p1, "domainUris"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)",
            "Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;"
        }
    .end annotation

    const-string v0, "domainUris"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;

    .local v0, "$this$setDomainUris_u24lambda_u242":Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;
    const/4 v1, 0x0

    .line 187
    .local v1, "$i$a$-apply-DeletionRequest$Builder$setDomainUris$1":I
    iput-object p1, v0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->domainUris:Ljava/util/List;

    .line 188
    nop

    .line 186
    .end local v0    # "$this$setDomainUris_u24lambda_u242":Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;
    .end local v1    # "$i$a$-apply-DeletionRequest$Builder$setDomainUris$1":I
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;

    .line 188
    return-object v0
.end method

.method public final setEnd(Ljava/time/Instant;)Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;
    .locals 2
    .param p1, "end"    # Ljava/time/Instant;

    const-string v0, "end"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;

    .local v0, "$this$setEnd_u24lambda_u241":Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;
    const/4 v1, 0x0

    .line 176
    .local v1, "$i$a$-apply-DeletionRequest$Builder$setEnd$1":I
    iput-object p1, v0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->end:Ljava/time/Instant;

    .line 177
    nop

    .line 175
    .end local v0    # "$this$setEnd_u24lambda_u241":Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;
    .end local v1    # "$i$a$-apply-DeletionRequest$Builder$setEnd$1":I
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;

    .line 177
    return-object v0
.end method

.method public final setOriginUris(Ljava/util/List;)Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;
    .locals 2
    .param p1, "originUris"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)",
            "Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;"
        }
    .end annotation

    const-string v0, "originUris"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;

    .local v0, "$this$setOriginUris_u24lambda_u243":Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;
    const/4 v1, 0x0

    .line 198
    .local v1, "$i$a$-apply-DeletionRequest$Builder$setOriginUris$1":I
    iput-object p1, v0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->originUris:Ljava/util/List;

    .line 199
    nop

    .line 197
    .end local v0    # "$this$setOriginUris_u24lambda_u243":Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;
    .end local v1    # "$i$a$-apply-DeletionRequest$Builder$setOriginUris$1":I
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;

    .line 199
    return-object v0
.end method

.method public final setStart(Ljava/time/Instant;)Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;
    .locals 2
    .param p1, "start"    # Ljava/time/Instant;

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;

    .local v0, "$this$setStart_u24lambda_u240":Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;
    const/4 v1, 0x0

    .line 167
    .local v1, "$i$a$-apply-DeletionRequest$Builder$setStart$1":I
    iput-object p1, v0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->start:Ljava/time/Instant;

    .line 168
    nop

    .line 166
    .end local v0    # "$this$setStart_u24lambda_u240":Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;
    .end local v1    # "$i$a$-apply-DeletionRequest$Builder$setStart$1":I
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;

    .line 168
    return-object v0
.end method
