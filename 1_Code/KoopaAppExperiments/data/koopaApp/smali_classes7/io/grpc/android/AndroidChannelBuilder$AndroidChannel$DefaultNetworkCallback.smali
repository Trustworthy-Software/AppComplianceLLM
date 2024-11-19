.class Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$DefaultNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "AndroidChannelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultNetworkCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;


# direct methods
.method private constructor <init>(Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$DefaultNetworkCallback;->this$0:Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;Lio/grpc/android/AndroidChannelBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;
    .param p2, "x1"    # Lio/grpc/android/AndroidChannelBuilder$1;

    .line 311
    invoke-direct {p0, p1}, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$DefaultNetworkCallback;-><init>(Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "network"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$DefaultNetworkCallback;->this$0:Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;

    invoke-static {v0}, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;->access$400(Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;)Lio/grpc/ManagedChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannel;->enterIdle()V

    .line 315
    return-void
.end method

.method public onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "blocked"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "network",
            "blocked"
        }
    .end annotation

    .line 319
    if-nez p2, :cond_0

    .line 320
    iget-object v0, p0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$DefaultNetworkCallback;->this$0:Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;

    invoke-static {v0}, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;->access$400(Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;)Lio/grpc/ManagedChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannel;->enterIdle()V

    .line 322
    :cond_0
    return-void
.end method
