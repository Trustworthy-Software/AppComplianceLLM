.class public final Lio/grpc/android/AndroidChannelBuilder;
.super Lio/grpc/ForwardingChannelBuilder;
.source "AndroidChannelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ForwardingChannelBuilder<",
        "Lio/grpc/android/AndroidChannelBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AndroidChannelBuilder"

.field private static final OKHTTP_CHANNEL_PROVIDER:Lio/grpc/ManagedChannelProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final delegateBuilder:Lio/grpc/ManagedChannelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    invoke-static {}, Lio/grpc/android/AndroidChannelBuilder;->findOkHttp()Lio/grpc/ManagedChannelProvider;

    move-result-object v0

    sput-object v0, Lio/grpc/android/AndroidChannelBuilder;->OKHTTP_CHANNEL_PROVIDER:Lio/grpc/ManagedChannelProvider;

    return-void
.end method

.method private constructor <init>(Lio/grpc/ManagedChannelBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegateBuilder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 146
    .local p1, "delegateBuilder":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<*>;"
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder;-><init>()V

    .line 147
    const-string v0, "delegateBuilder"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ManagedChannelBuilder;

    iput-object v0, p0, Lio/grpc/android/AndroidChannelBuilder;->delegateBuilder:Lio/grpc/ManagedChannelBuilder;

    .line 148
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder;-><init>()V

    .line 139
    sget-object v0, Lio/grpc/android/AndroidChannelBuilder;->OKHTTP_CHANNEL_PROVIDER:Lio/grpc/ManagedChannelProvider;

    if-eqz v0, :cond_0

    .line 142
    nop

    .line 143
    invoke-static {v0, p1}, Lio/grpc/InternalManagedChannelProvider;->builderForTarget(Lio/grpc/ManagedChannelProvider;Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/android/AndroidChannelBuilder;->delegateBuilder:Lio/grpc/ManagedChannelBuilder;

    .line 144
    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unable to load OkHttpChannelProvider"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findOkHttp()Lio/grpc/ManagedChannelProvider;
    .locals 6

    .line 65
    const-string v0, "AndroidChannelBuilder"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "io.grpc.okhttp.OkHttpChannelProvider"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 69
    .local v2, "klassRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 72
    :try_start_1
    const-class v3, Lio/grpc/ManagedChannelProvider;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    .local v3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/grpc/ManagedChannelProvider;>;"
    nop

    .line 79
    const/4 v4, 0x0

    :try_start_2
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/ManagedChannelProvider;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    .local v4, "provider":Lio/grpc/ManagedChannelProvider;
    nop

    .line 84
    invoke-static {v4}, Lio/grpc/InternalManagedChannelProvider;->isAvailable(Lio/grpc/ManagedChannelProvider;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 85
    const-string v5, "OkHttpChannelProvider.isAvailable() returned false"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-object v1

    .line 88
    :cond_0
    return-object v4

    .line 80
    .end local v4    # "provider":Lio/grpc/ManagedChannelProvider;
    :catch_0
    move-exception v4

    .line 81
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "Failed to construct OkHttpChannelProvider"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    return-object v1

    .line 73
    .end local v3    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/grpc/ManagedChannelProvider;>;"
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 74
    .local v3, "e":Ljava/lang/ClassCastException;
    const-string v4, "Couldn\'t cast OkHttpChannelProvider to ManagedChannelProvider"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    return-object v1

    .line 66
    .end local v2    # "klassRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :catch_2
    move-exception v2

    .line 67
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "Failed to find OkHttpChannelProvider"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    return-object v1
.end method

.method public static forAddress(Ljava/lang/String;I)Lio/grpc/android/AndroidChannelBuilder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "port"
        }
    .end annotation

    .line 107
    invoke-static {p0, p1}, Lio/grpc/internal/GrpcUtil;->authorityFromHostAndPort(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/android/AndroidChannelBuilder;->forTarget(Ljava/lang/String;)Lio/grpc/android/AndroidChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static forTarget(Ljava/lang/String;)Lio/grpc/android/AndroidChannelBuilder;
    .locals 1
    .param p0, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 100
    new-instance v0, Lio/grpc/android/AndroidChannelBuilder;

    invoke-direct {v0, p0}, Lio/grpc/android/AndroidChannelBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromBuilder(Lio/grpc/ManagedChannelBuilder;)Lio/grpc/android/AndroidChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;)",
            "Lio/grpc/android/AndroidChannelBuilder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    .local p0, "builder":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<*>;"
    invoke-static {p0}, Lio/grpc/android/AndroidChannelBuilder;->usingBuilder(Lio/grpc/ManagedChannelBuilder;)Lio/grpc/android/AndroidChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static usingBuilder(Lio/grpc/ManagedChannelBuilder;)Lio/grpc/android/AndroidChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;)",
            "Lio/grpc/android/AndroidChannelBuilder;"
        }
    .end annotation

    .line 135
    .local p0, "builder":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<*>;"
    new-instance v0, Lio/grpc/android/AndroidChannelBuilder;

    invoke-direct {v0, p0}, Lio/grpc/android/AndroidChannelBuilder;-><init>(Lio/grpc/ManagedChannelBuilder;)V

    return-object v0
.end method


# virtual methods
.method public build()Lio/grpc/ManagedChannel;
    .locals 3

    .line 168
    new-instance v0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;

    iget-object v1, p0, Lio/grpc/android/AndroidChannelBuilder;->delegateBuilder:Lio/grpc/ManagedChannelBuilder;

    invoke-virtual {v1}, Lio/grpc/ManagedChannelBuilder;->build()Lio/grpc/ManagedChannel;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/android/AndroidChannelBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;-><init>(Lio/grpc/ManagedChannel;Landroid/content/Context;)V

    return-object v0
.end method

.method public context(Landroid/content/Context;)Lio/grpc/android/AndroidChannelBuilder;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lio/grpc/android/AndroidChannelBuilder;->context:Landroid/content/Context;

    .line 155
    return-object p0
.end method

.method protected delegate()Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lio/grpc/android/AndroidChannelBuilder;->delegateBuilder:Lio/grpc/ManagedChannelBuilder;

    return-object v0
.end method
