.class public final Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerApi33Ext4Impl;
.super Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;
.source "TopicsManagerApi33Ext4Impl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerApi33Ext4Impl;",
        "Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    nop

    .line 29
    const-class v0, Landroid/adservices/topics/TopicsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "context.getSystemService\u2026opicsManager::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/adservices/topics/TopicsManager;

    .line 28
    invoke-direct {p0, v0}, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;-><init>(Landroid/adservices/topics/TopicsManager;)V

    return-void
.end method
