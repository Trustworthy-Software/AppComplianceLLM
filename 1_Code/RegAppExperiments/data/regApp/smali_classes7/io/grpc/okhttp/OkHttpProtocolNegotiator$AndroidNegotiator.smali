.class final Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;
.super Lio/grpc/okhttp/OkHttpProtocolNegotiator;
.source "OkHttpProtocolNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpProtocolNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AndroidNegotiator"
.end annotation


# static fields
.field private static final GET_ALPN_SELECTED_PROTOCOL:Lio/grpc/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final GET_APPLICATION_PROTOCOL:Ljava/lang/reflect/Method;

.field private static final GET_APPLICATION_PROTOCOLS:Ljava/lang/reflect/Method;

.field private static final GET_NPN_SELECTED_PROTOCOL:Lio/grpc/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_ALPN_PROTOCOLS:Lio/grpc/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_APPLICATION_PROTOCOLS:Ljava/lang/reflect/Method;

.field private static final SET_HOSTNAME:Lio/grpc/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_NPN_PROTOCOLS:Lio/grpc/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_SERVER_NAMES:Ljava/lang/reflect/Method;

.field private static final SET_USE_SESSION_TICKETS:Lio/grpc/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final SNI_HOST_NAME:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final SSL_SOCKETS_IS_SUPPORTED_SOCKET:Ljava/lang/reflect/Method;

.field private static final SSL_SOCKETS_SET_USE_SESSION_TICKET:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 126
    const-string v0, "Failed to find Android 7.0+ APIs"

    const-string v1, "Failed to find Android 10.0+ APIs"

    new-instance v2, Lio/grpc/okhttp/internal/OptionalMethod;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const-string v7, "setUseSessionTickets"

    invoke-direct {v2, v5, v7, v4}, Lio/grpc/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SET_USE_SESSION_TICKETS:Lio/grpc/okhttp/internal/OptionalMethod;

    .line 129
    new-instance v2, Lio/grpc/okhttp/internal/OptionalMethod;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v4, v6

    const-string v8, "setHostname"

    invoke-direct {v2, v5, v8, v4}, Lio/grpc/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SET_HOSTNAME:Lio/grpc/okhttp/internal/OptionalMethod;

    .line 132
    new-instance v2, Lio/grpc/okhttp/internal/OptionalMethod;

    const-string v4, "getAlpnSelectedProtocol"

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, [B

    invoke-direct {v2, v9, v4, v8}, Lio/grpc/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->GET_ALPN_SELECTED_PROTOCOL:Lio/grpc/okhttp/internal/OptionalMethod;

    .line 135
    new-instance v2, Lio/grpc/okhttp/internal/OptionalMethod;

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v9, v4, v6

    const-string v8, "setAlpnProtocols"

    invoke-direct {v2, v5, v8, v4}, Lio/grpc/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SET_ALPN_PROTOCOLS:Lio/grpc/okhttp/internal/OptionalMethod;

    .line 138
    new-instance v2, Lio/grpc/okhttp/internal/OptionalMethod;

    const-string v4, "getNpnSelectedProtocol"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-direct {v2, v9, v4, v8}, Lio/grpc/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->GET_NPN_SELECTED_PROTOCOL:Lio/grpc/okhttp/internal/OptionalMethod;

    .line 141
    new-instance v2, Lio/grpc/okhttp/internal/OptionalMethod;

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v9, v4, v6

    const-string v8, "setNpnProtocols"

    invoke-direct {v2, v5, v8, v4}, Lio/grpc/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SET_NPN_PROTOCOLS:Lio/grpc/okhttp/internal/OptionalMethod;

    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "setApplicationProtocolsMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 166
    .local v4, "getApplicationProtocolsMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .line 167
    .local v5, "getApplicationProtocolMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    .line 168
    .local v8, "sslSocketsIsSupportedSocketMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    .line 170
    .local v9, "sslSocketsSetUseSessionTicketsMethod":Ljava/lang/reflect/Method;
    :try_start_0
    const-class v10, Ljavax/net/ssl/SSLParameters;

    .line 171
    .local v10, "sslParameters":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "setApplicationProtocols"

    new-array v12, v3, [Ljava/lang/Class;

    const-class v13, [Ljava/lang/String;

    aput-object v13, v12, v6

    .line 172
    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v2, v11

    .line 173
    const-string v11, "getApplicationProtocols"

    new-array v12, v6, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v4, v11

    .line 174
    const-class v11, Ljavax/net/ssl/SSLSocket;

    const-string v12, "getApplicationProtocol"

    new-array v13, v6, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v5, v11

    .line 175
    const-string v11, "android.net.ssl.SSLSockets"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 176
    .local v11, "sslSockets":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v12, "isSupportedSocket"

    new-array v13, v3, [Ljava/lang/Class;

    const-class v14, Ljavax/net/ssl/SSLSocket;

    aput-object v14, v13, v6

    .line 177
    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    move-object v8, v12

    .line 178
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    const-class v13, Ljavax/net/ssl/SSLSocket;

    aput-object v13, v12, v6

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v3

    .line 179
    invoke-virtual {v11, v7, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v1

    .end local v10    # "sslParameters":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "sslSockets":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 182
    :catch_0
    move-exception v7

    .line 183
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->access$000()Ljava/util/logging/Logger;

    move-result-object v10

    sget-object v11, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v10, v11, v1, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 180
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v7

    .line 181
    .local v7, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->access$000()Ljava/util/logging/Logger;

    move-result-object v10

    sget-object v11, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v10, v11, v1, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    .end local v7    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 185
    :goto_1
    sput-object v2, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SET_APPLICATION_PROTOCOLS:Ljava/lang/reflect/Method;

    .line 186
    sput-object v4, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->GET_APPLICATION_PROTOCOLS:Ljava/lang/reflect/Method;

    .line 187
    sput-object v5, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->GET_APPLICATION_PROTOCOL:Ljava/lang/reflect/Method;

    .line 188
    sput-object v8, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SSL_SOCKETS_IS_SUPPORTED_SOCKET:Ljava/lang/reflect/Method;

    .line 189
    sput-object v9, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SSL_SOCKETS_SET_USE_SESSION_TICKET:Ljava/lang/reflect/Method;

    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, "setServerNamesMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    .line 195
    .local v7, "sniHostNameConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :try_start_1
    const-class v10, Ljavax/net/ssl/SSLParameters;

    const-string v11, "setServerNames"

    new-array v12, v3, [Ljava/lang/Class;

    const-class v13, Ljava/util/List;

    aput-object v13, v12, v6

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v1, v10

    .line 196
    const-string v10, "javax.net.ssl.SNIHostName"

    .line 197
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    new-array v3, v3, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v3, v6

    invoke-virtual {v10, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v7, v0

    goto :goto_2

    .line 200
    :catch_2
    move-exception v3

    .line 201
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->access$000()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v10, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v6, v10, v0, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 198
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v3

    .line 199
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->access$000()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v10, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v6, v10, v0, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_2
    nop

    .line 203
    :goto_3
    sput-object v1, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SET_SERVER_NAMES:Ljava/lang/reflect/Method;

    .line 204
    sput-object v7, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SNI_HOST_NAME:Ljava/lang/reflect/Constructor;

    .line 205
    .end local v1    # "setServerNamesMethod":Ljava/lang/reflect/Method;
    .end local v2    # "setApplicationProtocolsMethod":Ljava/lang/reflect/Method;
    .end local v4    # "getApplicationProtocolsMethod":Ljava/lang/reflect/Method;
    .end local v5    # "getApplicationProtocolMethod":Ljava/lang/reflect/Method;
    .end local v7    # "sniHostNameConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "sslSocketsIsSupportedSocketMethod":Ljava/lang/reflect/Method;
    .end local v9    # "sslSocketsSetUseSessionTicketsMethod":Ljava/lang/reflect/Method;
    return-void
.end method

.method constructor <init>(Lio/grpc/okhttp/internal/Platform;)V
    .locals 0
    .param p1, "platform"    # Lio/grpc/okhttp/internal/Platform;

    .line 208
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;-><init>(Lio/grpc/okhttp/internal/Platform;)V

    .line 209
    return-void
.end method


# virtual methods
.method protected configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/Protocol;",
            ">;)V"
        }
    .end annotation

    .line 235
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/Protocol;>;"
    invoke-static {p3}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->access$100(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "protocolNames":[Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    .line 243
    .local v1, "sslParams":Ljavax/net/ssl/SSLParameters;
    const/4 v2, 0x0

    if-eqz p2, :cond_2

    :try_start_0
    invoke-static {p2}, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->isValidHostName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    sget-object v3, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SSL_SOCKETS_IS_SUPPORTED_SOCKET:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    .line 245
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    sget-object v3, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SSL_SOCKETS_SET_USE_SESSION_TICKET:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 248
    :cond_0
    sget-object v3, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SET_USE_SESSION_TICKETS:Lio/grpc/okhttp/internal/OptionalMethod;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, p1, v5}, Lio/grpc/okhttp/internal/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :goto_0
    sget-object v3, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SET_SERVER_NAMES:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    sget-object v5, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SNI_HOST_NAME:Ljava/lang/reflect/Constructor;

    if-eqz v5, :cond_1

    .line 251
    new-array v4, v4, [Ljava/lang/Object;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v6

    .line 252
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 254
    :cond_1
    sget-object v3, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SET_HOSTNAME:Lio/grpc/okhttp/internal/OptionalMethod;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lio/grpc/okhttp/internal/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .line 258
    .local v3, "alpnEnabled":Z
    sget-object v4, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->GET_APPLICATION_PROTOCOL:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_4

    .line 264
    :try_start_1
    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v4, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SET_APPLICATION_PROTOCOLS:Ljava/lang/reflect/Method;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 266
    const/4 v3, 0x1

    .line 274
    goto :goto_2

    .line 267
    :catch_0
    move-exception v4

    .line 268
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    .line 269
    .local v5, "targetException":Ljava/lang/Throwable;
    instance-of v6, v5, Ljava/lang/UnsupportedOperationException;

    if-eqz v6, :cond_3

    .line 270
    invoke-static {}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->access$000()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v8, "setApplicationProtocol unsupported, will try old methods"

    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    .line 272
    :cond_3
    nop

    .end local v0    # "protocolNames":[Ljava/lang/String;
    .end local v1    # "sslParams":Ljavax/net/ssl/SSLParameters;
    .end local p1    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p2    # "hostname":Ljava/lang/String;
    .end local p3    # "protocols":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/Protocol;>;"
    throw v4

    .line 276
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v5    # "targetException":Ljava/lang/Throwable;
    .restart local v0    # "protocolNames":[Ljava/lang/String;
    .restart local v1    # "sslParams":Ljavax/net/ssl/SSLParameters;
    .restart local p1    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p2    # "hostname":Ljava/lang/String;
    .restart local p3    # "protocols":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/Protocol;>;"
    :cond_4
    :goto_2
    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 280
    if-eqz v3, :cond_5

    sget-object v4, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->GET_APPLICATION_PROTOCOLS:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_5

    .line 281
    nop

    .line 282
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 283
    .local v2, "configuredProtocols":[Ljava/lang/String;
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v4, :cond_5

    .line 284
    return-void

    .line 293
    .end local v2    # "configuredProtocols":[Ljava/lang/String;
    .end local v3    # "alpnEnabled":Z
    :cond_5
    nop

    .line 295
    invoke-static {p3}, Lio/grpc/okhttp/internal/Platform;->concatLengthPrefixed(Ljava/util/List;)[B

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 296
    .local v2, "parameters":[Ljava/lang/Object;
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->platform:Lio/grpc/okhttp/internal/Platform;

    invoke-virtual {v3}, Lio/grpc/okhttp/internal/Platform;->getTlsExtensionType()Lio/grpc/okhttp/internal/Platform$TlsExtensionType;

    move-result-object v3

    sget-object v4, Lio/grpc/okhttp/internal/Platform$TlsExtensionType;->ALPN_AND_NPN:Lio/grpc/okhttp/internal/Platform$TlsExtensionType;

    if-ne v3, v4, :cond_6

    .line 297
    sget-object v3, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SET_ALPN_PROTOCOLS:Lio/grpc/okhttp/internal/OptionalMethod;

    invoke-virtual {v3, p1, v2}, Lio/grpc/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_6
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->platform:Lio/grpc/okhttp/internal/Platform;

    invoke-virtual {v3}, Lio/grpc/okhttp/internal/Platform;->getTlsExtensionType()Lio/grpc/okhttp/internal/Platform$TlsExtensionType;

    move-result-object v3

    sget-object v4, Lio/grpc/okhttp/internal/Platform$TlsExtensionType;->NONE:Lio/grpc/okhttp/internal/Platform$TlsExtensionType;

    if-eq v3, v4, :cond_7

    .line 300
    sget-object v3, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->SET_NPN_PROTOCOLS:Lio/grpc/okhttp/internal/OptionalMethod;

    invoke-virtual {v3, p1, v2}, Lio/grpc/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    return-void

    .line 302
    :cond_7
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "We can not do TLS handshake on this Android version, please install the Google Play Services Dynamic Security Provider to use TLS"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 291
    .end local v2    # "parameters":[Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 292
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 289
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 290
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 287
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    .line 288
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 6
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 309
    sget-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->GET_APPLICATION_PROTOCOL:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 311
    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    .line 316
    .local v2, "targetException":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/UnsupportedOperationException;

    if-eqz v3, :cond_0

    .line 317
    invoke-static {}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->access$000()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v5, "Socket unsupported for getApplicationProtocol, will try old methods"

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 312
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "targetException":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 326
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->platform:Lio/grpc/okhttp/internal/Platform;

    invoke-virtual {v0}, Lio/grpc/okhttp/internal/Platform;->getTlsExtensionType()Lio/grpc/okhttp/internal/Platform$TlsExtensionType;

    move-result-object v0

    sget-object v2, Lio/grpc/okhttp/internal/Platform$TlsExtensionType;->ALPN_AND_NPN:Lio/grpc/okhttp/internal/Platform$TlsExtensionType;

    if-ne v0, v2, :cond_3

    .line 328
    :try_start_1
    sget-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->GET_ALPN_SELECTED_PROTOCOL:Lio/grpc/okhttp/internal/OptionalMethod;

    new-array v2, v1, [Ljava/lang/Object;

    .line 329
    invoke-virtual {v0, p1, v2}, Lio/grpc/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 330
    .local v0, "alpnResult":[B
    if-eqz v0, :cond_2

    .line 331
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lio/grpc/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object v2

    .line 337
    .end local v0    # "alpnResult":[B
    :cond_2
    goto :goto_1

    .line 333
    :catch_2
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Failed calling getAlpnSelectedProtocol()"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->platform:Lio/grpc/okhttp/internal/Platform;

    invoke-virtual {v0}, Lio/grpc/okhttp/internal/Platform;->getTlsExtensionType()Lio/grpc/okhttp/internal/Platform$TlsExtensionType;

    move-result-object v0

    sget-object v2, Lio/grpc/okhttp/internal/Platform$TlsExtensionType;->NONE:Lio/grpc/okhttp/internal/Platform$TlsExtensionType;

    if-eq v0, v2, :cond_5

    .line 342
    :try_start_2
    sget-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->GET_NPN_SELECTED_PROTOCOL:Lio/grpc/okhttp/internal/OptionalMethod;

    new-array v1, v1, [Ljava/lang/Object;

    .line 343
    invoke-virtual {v0, p1, v1}, Lio/grpc/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 344
    .local v0, "npnResult":[B
    if-eqz v0, :cond_4

    .line 345
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lio/grpc/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    return-object v1

    .line 351
    .end local v0    # "npnResult":[B
    :cond_4
    goto :goto_2

    .line 347
    :catch_3
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Failed calling getNpnSelectedProtocol()"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public negotiate(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/Protocol;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/Protocol;>;"
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "negotiatedProtocol":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 218
    invoke-super {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->negotiate(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_0
    return-object v0
.end method
