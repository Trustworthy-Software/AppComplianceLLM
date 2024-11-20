.class public Lcom/google/firebase/components/Component$Builder;
.super Ljava/lang/Object;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/components/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/Dependency;",
            ">;"
        }
    .end annotation
.end field

.field private factory:Lcom/google/firebase/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/ComponentFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private instantiation:I

.field private name:Ljava/lang/String;

.field private final providedInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/Qualified<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field private final publishedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method private varargs constructor <init>(Lcom/google/firebase/components/Qualified;[Lcom/google/firebase/components/Qualified;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/Qualified<",
            "TT;>;[",
            "Lcom/google/firebase/components/Qualified<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 302
    .local p0, "this":Lcom/google/firebase/components/Component$Builder;, "Lcom/google/firebase/components/Component$Builder<TT;>;"
    .local p1, "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    .local p2, "additionalInterfaces":[Lcom/google/firebase/components/Qualified;, "[Lcom/google/firebase/components/Qualified<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/components/Component$Builder;->name:Ljava/lang/String;

    .line 284
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/Component$Builder;->providedInterfaces:Ljava/util/Set;

    .line 285
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/components/Component$Builder;->dependencies:Ljava/util/Set;

    .line 286
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/firebase/components/Component$Builder;->instantiation:I

    .line 287
    iput v1, p0, Lcom/google/firebase/components/Component$Builder;->type:I

    .line 289
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/components/Component$Builder;->publishedEvents:Ljava/util/Set;

    .line 303
    const-string v2, "Null interface"

    invoke-static {p1, v2}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 305
    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p2, v1

    .line 306
    .local v3, "iface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<-TT;>;"
    invoke-static {v3, v2}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 305
    .end local v3    # "iface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<-TT;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/components/Component$Builder;->providedInterfaces:Ljava/util/Set;

    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 309
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/components/Qualified;[Lcom/google/firebase/components/Qualified;Lcom/google/firebase/components/Component$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/components/Qualified;
    .param p2, "x1"    # [Lcom/google/firebase/components/Qualified;
    .param p3, "x2"    # Lcom/google/firebase/components/Component$1;

    .line 282
    .local p0, "this":Lcom/google/firebase/components/Component$Builder;, "Lcom/google/firebase/components/Component$Builder<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/components/Component$Builder;-><init>(Lcom/google/firebase/components/Qualified;[Lcom/google/firebase/components/Qualified;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 292
    .local p0, "this":Lcom/google/firebase/components/Component$Builder;, "Lcom/google/firebase/components/Component$Builder<TT;>;"
    .local p1, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "additionalInterfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/components/Component$Builder;->name:Ljava/lang/String;

    .line 284
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/Component$Builder;->providedInterfaces:Ljava/util/Set;

    .line 285
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/components/Component$Builder;->dependencies:Ljava/util/Set;

    .line 286
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/firebase/components/Component$Builder;->instantiation:I

    .line 287
    iput v1, p0, Lcom/google/firebase/components/Component$Builder;->type:I

    .line 289
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/components/Component$Builder;->publishedEvents:Ljava/util/Set;

    .line 293
    const-string v2, "Null interface"

    invoke-static {p1, v2}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 294
    invoke-static {p1}, Lcom/google/firebase/components/Qualified;->unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p2, v1

    .line 296
    .local v3, "iface":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    invoke-static {v3, v2}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 297
    iget-object v4, p0, Lcom/google/firebase/components/Component$Builder;->providedInterfaces:Ljava/util/Set;

    invoke-static {v3}, Lcom/google/firebase/components/Qualified;->unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    .end local v3    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;Lcom/google/firebase/components/Component$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # [Ljava/lang/Class;
    .param p3, "x2"    # Lcom/google/firebase/components/Component$1;

    .line 282
    .local p0, "this":Lcom/google/firebase/components/Component$Builder;, "Lcom/google/firebase/components/Component$Builder<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/components/Component$Builder;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/components/Component$Builder;)Lcom/google/firebase/components/Component$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/components/Component$Builder;

    .line 282
    invoke-direct {p0}, Lcom/google/firebase/components/Component$Builder;->intoSet()Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    return-object v0
.end method

.method private intoSet()Lcom/google/firebase/components/Component$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 368
    .local p0, "this":Lcom/google/firebase/components/Component$Builder;, "Lcom/google/firebase/components/Component$Builder<TT;>;"
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/components/Component$Builder;->type:I

    .line 369
    return-object p0
.end method

.method private setInstantiation(I)Lcom/google/firebase/components/Component$Builder;
    .locals 2
    .param p1, "instantiation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 347
    .local p0, "this":Lcom/google/firebase/components/Component$Builder;, "Lcom/google/firebase/components/Component$Builder<TT;>;"
    iget v0, p0, Lcom/google/firebase/components/Component$Builder;->instantiation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Instantiation type has already been set."

    invoke-static {v0, v1}, Lcom/google/firebase/components/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 349
    iput p1, p0, Lcom/google/firebase/components/Component$Builder;->instantiation:I

    .line 350
    return-object p0
.end method

.method private validateInterface(Lcom/google/firebase/components/Qualified;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/Qualified<",
            "*>;)V"
        }
    .end annotation

    .line 354
    .local p0, "this":Lcom/google/firebase/components/Component$Builder;, "Lcom/google/firebase/components/Component$Builder<TT;>;"
    .local p1, "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<*>;"
    iget-object v0, p0, Lcom/google/firebase/components/Component$Builder;->providedInterfaces:Ljava/util/Set;

    .line 355
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 354
    const-string v1, "Components are not allowed to depend on interfaces they themselves provide."

    invoke-static {v0, v1}, Lcom/google/firebase/components/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 357
    return-void
.end method


# virtual methods
.method public add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;
    .locals 1
    .param p1, "dependency"    # Lcom/google/firebase/components/Dependency;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/Dependency;",
            ")",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 320
    .local p0, "this":Lcom/google/firebase/components/Component$Builder;, "Lcom/google/firebase/components/Component$Builder<TT;>;"
    const-string v0, "Null dependency"

    invoke-static {p1, v0}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    invoke-virtual {p1}, Lcom/google/firebase/components/Dependency;->getInterface()Lcom/google/firebase/components/Qualified;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/components/Component$Builder;->validateInterface(Lcom/google/firebase/components/Qualified;)V

    .line 322
    iget-object v0, p0, Lcom/google/firebase/components/Component$Builder;->dependencies:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 323
    return-object p0
.end method

.method public alwaysEager()Lcom/google/firebase/components/Component$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 329
    .local p0, "this":Lcom/google/firebase/components/Component$Builder;, "Lcom/google/firebase/components/Component$Builder<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/firebase/components/Component$Builder;->setInstantiation(I)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/firebase/components/Component;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Component<",
            "TT;>;"
        }
    .end annotation

    .line 374
    .local p0, "this":Lcom/google/firebase/components/Component$Builder;, "Lcom/google/firebase/components/Component$Builder<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/components/Component$Builder;->factory:Lcom/google/firebase/components/ComponentFactory;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Missing required property: factory."

    invoke-static {v0, v1}, Lcom/google/firebase/components/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 375
    new-instance v0, Lcom/google/firebase/components/Component;

    iget-object v3, p0, Lcom/google/firebase/components/Component$Builder;->name:Ljava/lang/String;

    new-instance v4, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/firebase/components/Component$Builder;->providedInterfaces:Ljava/util/Set;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/firebase/components/Component$Builder;->dependencies:Ljava/util/Set;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget v6, p0, Lcom/google/firebase/components/Component$Builder;->instantiation:I

    iget v7, p0, Lcom/google/firebase/components/Component$Builder;->type:I

    iget-object v8, p0, Lcom/google/firebase/components/Component$Builder;->factory:Lcom/google/firebase/components/ComponentFactory;

    iget-object v9, p0, Lcom/google/firebase/components/Component$Builder;->publishedEvents:Ljava/util/Set;

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/google/firebase/components/Component;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILcom/google/firebase/components/ComponentFactory;Ljava/util/Set;Lcom/google/firebase/components/Component$1;)V

    return-object v0
.end method

.method public eagerInDefaultApp()Lcom/google/firebase/components/Component$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 335
    .local p0, "this":Lcom/google/firebase/components/Component$Builder;, "Lcom/google/firebase/components/Component$Builder<TT;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/firebase/components/Component$Builder;->setInstantiation(I)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    return-object v0
.end method

.method public factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/ComponentFactory<",
            "TT;>;)",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 362
    .local p0, "this":Lcom/google/firebase/components/Component$Builder;, "Lcom/google/firebase/components/Component$Builder<TT;>;"
    .local p1, "value":Lcom/google/firebase/components/ComponentFactory;, "Lcom/google/firebase/components/ComponentFactory<TT;>;"
    const-string v0, "Null factory"

    invoke-static {p1, v0}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/ComponentFactory;

    iput-object v0, p0, Lcom/google/firebase/components/Component$Builder;->factory:Lcom/google/firebase/components/ComponentFactory;

    .line 363
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/google/firebase/components/Component$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 313
    .local p0, "this":Lcom/google/firebase/components/Component$Builder;, "Lcom/google/firebase/components/Component$Builder<TT;>;"
    iput-object p1, p0, Lcom/google/firebase/components/Component$Builder;->name:Ljava/lang/String;

    .line 314
    return-object p0
.end method

.method public publishes(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 341
    .local p0, "this":Lcom/google/firebase/components/Component$Builder;, "Lcom/google/firebase/components/Component$Builder<TT;>;"
    .local p1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/google/firebase/components/Component$Builder;->publishedEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 342
    return-object p0
.end method
