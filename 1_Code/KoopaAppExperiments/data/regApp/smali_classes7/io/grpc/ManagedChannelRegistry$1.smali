.class Lio/grpc/ManagedChannelRegistry$1;
.super Ljava/lang/Object;
.source "ManagedChannelRegistry.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/ManagedChannelRegistry;->refreshProviders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/grpc/ManagedChannelProvider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/ManagedChannelRegistry;


# direct methods
.method constructor <init>(Lio/grpc/ManagedChannelRegistry;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/ManagedChannelRegistry;

    .line 87
    iput-object p1, p0, Lio/grpc/ManagedChannelRegistry$1;->this$0:Lio/grpc/ManagedChannelRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lio/grpc/ManagedChannelProvider;Lio/grpc/ManagedChannelProvider;)I
    .locals 2
    .param p1, "o1"    # Lio/grpc/ManagedChannelProvider;
    .param p2, "o2"    # Lio/grpc/ManagedChannelProvider;

    .line 90
    invoke-virtual {p1}, Lio/grpc/ManagedChannelProvider;->priority()I

    move-result v0

    invoke-virtual {p2}, Lio/grpc/ManagedChannelProvider;->priority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 87
    check-cast p1, Lio/grpc/ManagedChannelProvider;

    check-cast p2, Lio/grpc/ManagedChannelProvider;

    invoke-virtual {p0, p1, p2}, Lio/grpc/ManagedChannelRegistry$1;->compare(Lio/grpc/ManagedChannelProvider;Lio/grpc/ManagedChannelProvider;)I

    move-result p1

    return p1
.end method
