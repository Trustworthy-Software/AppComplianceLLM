.class final Lio/grpc/ServiceProviders;
.super Ljava/lang/Object;
.source "ServiceProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/ServiceProviders$PriorityAccessor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static createForHardCoded(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 136
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/util/ServiceConfigurationError;

    .line 147
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Provider %s could not be instantiated %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 137
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "ex":Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static getCandidatesViaHardCoded(Ljava/lang/Class;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 123
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "hardcoded":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<*>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 125
    .local v2, "candidate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, v2}, Lio/grpc/ServiceProviders;->createForHardCoded(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 126
    .local v3, "t":Ljava/lang/Object;, "TT;"
    if-nez v3, :cond_0

    .line 127
    goto :goto_0

    .line 129
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v2    # "candidate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 131
    :cond_1
    return-object v0
.end method

.method public static getCandidatesViaServiceLoader(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/Iterable;
    .locals 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 108
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 111
    .local v0, "i":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    invoke-static {p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 114
    :cond_0
    return-object v0
.end method

.method static isAndroid(Ljava/lang/ClassLoader;)Z
    .locals 2
    .param p0, "cl"    # Ljava/lang/ClassLoader;

    .line 95
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.Application"

    invoke-static {v1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const/4 v0, 0x1

    return v0

    .line 97
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lio/grpc/ServiceProviders$PriorityAccessor;)Ljava/lang/Object;
    .locals 2
    .param p2, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/ClassLoader;",
            "Lio/grpc/ServiceProviders$PriorityAccessor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 42
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "hardcoded":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<*>;>;"
    .local p3, "priorityAccessor":Lio/grpc/ServiceProviders$PriorityAccessor;, "Lio/grpc/ServiceProviders$PriorityAccessor<TT;>;"
    invoke-static {p0, p1, p2, p3}, Lio/grpc/ServiceProviders;->loadAll(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lio/grpc/ServiceProviders$PriorityAccessor;)Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const/4 v1, 0x0

    return-object v1

    .line 46
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static loadAll(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lio/grpc/ServiceProviders$PriorityAccessor;)Ljava/util/List;
    .locals 5
    .param p2, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/ClassLoader;",
            "Lio/grpc/ServiceProviders$PriorityAccessor<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 61
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "hardcoded":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<*>;>;"
    .local p3, "priorityAccessor":Lio/grpc/ServiceProviders$PriorityAccessor;, "Lio/grpc/ServiceProviders$PriorityAccessor<TT;>;"
    invoke-static {p2}, Lio/grpc/ServiceProviders;->isAndroid(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0, p1}, Lio/grpc/ServiceProviders;->getCandidatesViaHardCoded(Ljava/lang/Class;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    .local v0, "candidates":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    goto :goto_0

    .line 64
    .end local v0    # "candidates":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    :cond_0
    invoke-static {p0, p2}, Lio/grpc/ServiceProviders;->getCandidatesViaServiceLoader(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/Iterable;

    move-result-object v0

    .line 66
    .restart local v0    # "candidates":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 68
    .local v3, "current":Ljava/lang/Object;, "TT;"
    invoke-interface {p3, v3}, Lio/grpc/ServiceProviders$PriorityAccessor;->isAvailable(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 69
    goto :goto_1

    .line 71
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v3    # "current":Ljava/lang/Object;, "TT;"
    goto :goto_1

    .line 76
    :cond_2
    new-instance v2, Lio/grpc/ServiceProviders$1;

    invoke-direct {v2, p3}, Lio/grpc/ServiceProviders$1;-><init>(Lio/grpc/ServiceProviders$PriorityAccessor;)V

    invoke-static {v2}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
