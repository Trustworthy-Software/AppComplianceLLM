.class public final Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;
.super Ljava/lang/Object;
.source "WebSourceRegistrationRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001b\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0006R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;",
        "",
        "webSourceParams",
        "",
        "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;",
        "topOriginUri",
        "Landroid/net/Uri;",
        "(Ljava/util/List;Landroid/net/Uri;)V",
        "appDestination",
        "inputEvent",
        "Landroid/view/InputEvent;",
        "verifiedDestination",
        "webDestination",
        "build",
        "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;",
        "setAppDestination",
        "setInputEvent",
        "setVerifiedDestination",
        "setWebDestination",
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
.field private appDestination:Landroid/net/Uri;

.field private inputEvent:Landroid/view/InputEvent;

.field private final topOriginUri:Landroid/net/Uri;

.field private verifiedDestination:Landroid/net/Uri;

.field private webDestination:Landroid/net/Uri;

.field private final webSourceParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/net/Uri;)V
    .locals 1
    .param p1, "webSourceParams"    # Ljava/util/List;
    .param p2, "topOriginUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    const-string v0, "webSourceParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topOriginUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->webSourceParams:Ljava/util/List;

    .line 100
    iput-object p2, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->topOriginUri:Landroid/net/Uri;

    .line 98
    return-void
.end method


# virtual methods
.method public final build()Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;
    .locals 8

    .line 152
    new-instance v7, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;

    .line 153
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->webSourceParams:Ljava/util/List;

    .line 154
    iget-object v2, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->topOriginUri:Landroid/net/Uri;

    .line 155
    iget-object v3, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->inputEvent:Landroid/view/InputEvent;

    .line 156
    iget-object v4, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->appDestination:Landroid/net/Uri;

    .line 157
    iget-object v5, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->webDestination:Landroid/net/Uri;

    .line 158
    iget-object v6, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->verifiedDestination:Landroid/net/Uri;

    .line 152
    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;-><init>(Ljava/util/List;Landroid/net/Uri;Landroid/view/InputEvent;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v7
.end method

.method public final setAppDestination(Landroid/net/Uri;)Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;
    .locals 2
    .param p1, "appDestination"    # Landroid/net/Uri;

    .line 125
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;

    .local v0, "$this$setAppDestination_u24lambda_u241":Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;
    const/4 v1, 0x0

    .line 126
    .local v1, "$i$a$-apply-WebSourceRegistrationRequest$Builder$setAppDestination$1":I
    iput-object p1, v0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->appDestination:Landroid/net/Uri;

    .line 127
    nop

    .line 125
    .end local v0    # "$this$setAppDestination_u24lambda_u241":Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;
    .end local v1    # "$i$a$-apply-WebSourceRegistrationRequest$Builder$setAppDestination$1":I
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;

    .line 127
    return-object v0
.end method

.method public final setInputEvent(Landroid/view/InputEvent;)Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;
    .locals 2
    .param p1, "inputEvent"    # Landroid/view/InputEvent;

    const-string v0, "inputEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;

    .local v0, "$this$setInputEvent_u24lambda_u240":Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;
    const/4 v1, 0x0

    .line 115
    .local v1, "$i$a$-apply-WebSourceRegistrationRequest$Builder$setInputEvent$1":I
    iput-object p1, v0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->inputEvent:Landroid/view/InputEvent;

    .line 116
    nop

    .line 114
    .end local v0    # "$this$setInputEvent_u24lambda_u240":Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;
    .end local v1    # "$i$a$-apply-WebSourceRegistrationRequest$Builder$setInputEvent$1":I
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;

    .line 116
    return-object v0
.end method

.method public final setVerifiedDestination(Landroid/net/Uri;)Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;
    .locals 2
    .param p1, "verifiedDestination"    # Landroid/net/Uri;

    .line 146
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;

    .local v0, "$this$setVerifiedDestination_u24lambda_u243":Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;
    const/4 v1, 0x0

    .line 147
    .local v1, "$i$a$-apply-WebSourceRegistrationRequest$Builder$setVerifiedDestination$1":I
    iput-object p1, v0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->verifiedDestination:Landroid/net/Uri;

    .line 148
    nop

    .line 146
    .end local v0    # "$this$setVerifiedDestination_u24lambda_u243":Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;
    .end local v1    # "$i$a$-apply-WebSourceRegistrationRequest$Builder$setVerifiedDestination$1":I
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;

    .line 148
    return-object v0
.end method

.method public final setWebDestination(Landroid/net/Uri;)Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;
    .locals 2
    .param p1, "webDestination"    # Landroid/net/Uri;

    .line 136
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;

    .local v0, "$this$setWebDestination_u24lambda_u242":Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;
    const/4 v1, 0x0

    .line 137
    .local v1, "$i$a$-apply-WebSourceRegistrationRequest$Builder$setWebDestination$1":I
    iput-object p1, v0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;->webDestination:Landroid/net/Uri;

    .line 138
    nop

    .line 136
    .end local v0    # "$this$setWebDestination_u24lambda_u242":Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;
    .end local v1    # "$i$a$-apply-WebSourceRegistrationRequest$Builder$setWebDestination$1":I
    move-object v0, p0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;

    .line 138
    return-object v0
.end method
