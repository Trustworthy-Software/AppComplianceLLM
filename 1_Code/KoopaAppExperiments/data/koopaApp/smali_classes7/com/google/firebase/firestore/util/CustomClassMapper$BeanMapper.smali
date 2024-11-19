.class Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;
.super Ljava/lang/Object;
.source "CustomClassMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/util/CustomClassMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BeanMapper"
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
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final documentIdPropertyNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final getters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final serverTimestamps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final setters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final throwOnUnknownProperties:Z

.field private final warnOnUnknownProperties:Z


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 598
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    iput-object p1, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    .line 600
    const-class v0, Lcom/google/firebase/firestore/ThrowOnExtraProperties;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->throwOnUnknownProperties:Z

    .line 601
    const-class v0, Lcom/google/firebase/firestore/IgnoreExtraProperties;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->warnOnUnknownProperties:Z

    .line 602
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    .line 604
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    .line 605
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->getters:Ljava/util/Map;

    .line 606
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    .line 608
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->serverTimestamps:Ljava/util/HashSet;

    .line 609
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->documentIdPropertyNames:Ljava/util/HashSet;

    .line 613
    const/4 v0, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 614
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    goto :goto_0

    .line 615
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catch_0
    move-exception v2

    .line 617
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const/4 v3, 0x0

    move-object v2, v3

    .line 619
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :goto_0
    iput-object v2, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->constructor:Ljava/lang/reflect/Constructor;

    .line 621
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 622
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-static {v6}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->shouldIncludeGetter(Ljava/lang/reflect/Method;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 623
    invoke-static {v6}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v7

    .line 624
    .local v7, "propertyName":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->addProperty(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 626
    iget-object v8, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->getters:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 633
    iget-object v8, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->getters:Ljava/util/Map;

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    invoke-direct {p0, v6}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->applyGetterAnnotations(Ljava/lang/reflect/Method;)V

    goto :goto_2

    .line 627
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found conflicting getters for name "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 629
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " on class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 631
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "propertyName":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 639
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_3
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 640
    .local v6, "field":Ljava/lang/reflect/Field;
    invoke-static {v6}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->shouldIncludeField(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 641
    invoke-static {v6}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    .line 642
    .restart local v7    # "propertyName":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->addProperty(Ljava/lang/String;)V

    .line 643
    invoke-direct {p0, v6}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->applyFieldAnnotations(Ljava/lang/reflect/Field;)V

    .line 639
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "propertyName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 650
    :cond_4
    move-object v3, p1

    .line 653
    .local v3, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v6, v0

    :goto_4
    if-ge v6, v5, :cond_a

    aget-object v7, v4, v6

    .line 654
    .local v7, "method":Ljava/lang/reflect/Method;
    invoke-static {v7}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->shouldIncludeSetter(Ljava/lang/reflect/Method;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 655
    invoke-static {v7}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v8

    .line 656
    .local v8, "propertyName":Ljava/lang/String;
    iget-object v9, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 657
    .local v9, "existingPropertyName":Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 658
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 665
    iget-object v10, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Method;

    .line 666
    .local v10, "existingSetter":Ljava/lang/reflect/Method;
    if-nez v10, :cond_6

    .line 667
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 668
    iget-object v11, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v11, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    invoke-direct {p0, v7}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->applySetterAnnotations(Ljava/lang/reflect/Method;)V

    goto/16 :goto_5

    .line 670
    :cond_6
    invoke-static {v7, v10}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->isSetterOverride(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 673
    if-ne v3, p1, :cond_7

    .line 675
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 677
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " has multiple setter overloads with name "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 679
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found conflicting setters with name: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 684
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " (conflicts with "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 686
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " defined on "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 688
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    .end local v10    # "existingSetter":Ljava/lang/reflect/Method;
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found setter on "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 661
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " with invalid case-sensitive name: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 663
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    .end local v7    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "propertyName":Ljava/lang/String;
    .end local v9    # "existingPropertyName":Ljava/lang/String;
    :cond_9
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 697
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    move v6, v0

    :goto_6
    if-ge v6, v5, :cond_c

    aget-object v7, v4, v6

    .line 698
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-static {v7}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v8

    .line 702
    .restart local v8    # "propertyName":Ljava/lang/String;
    iget-object v9, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    .line 703
    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 704
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 705
    iget-object v9, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    invoke-direct {p0, v7}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->applyFieldAnnotations(Ljava/lang/reflect/Field;)V

    .line 697
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "propertyName":Ljava/lang/String;
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 712
    :cond_c
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 713
    if-eqz v3, :cond_d

    const-class v4, Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 715
    :cond_d
    iget-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 720
    iget-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->documentIdPropertyNames:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 721
    .local v1, "docIdProperty":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_8

    .line 722
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@DocumentId is annotated on property "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 726
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but no field or public setter was found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    .end local v1    # "docIdProperty":Ljava/lang/String;
    :cond_f
    :goto_8
    goto :goto_7

    .line 730
    :cond_10
    return-void

    .line 716
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No properties to serialize found on class "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/reflect/Field;

    .line 569
    invoke-static {p0}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;

    .line 569
    iget-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method private addProperty(Ljava/lang/String;)V
    .locals 4
    .param p1, "property"    # Ljava/lang/String;

    .line 733
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 734
    .local v0, "oldValue":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 735
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found two getters or fields with conflicting case sensitivity for property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 738
    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 740
    :cond_1
    :goto_0
    return-void
.end method

.method private static annotatedName(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Ljava/lang/reflect/AccessibleObject;

    .line 1092
    const-class v0, Lcom/google/firebase/firestore/PropertyName;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    const-class v0, Lcom/google/firebase/firestore/PropertyName;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/PropertyName;

    .line 1094
    .local v0, "annotation":Lcom/google/firebase/firestore/PropertyName;
    invoke-interface {v0}, Lcom/google/firebase/firestore/PropertyName;->value()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1097
    .end local v0    # "annotation":Lcom/google/firebase/firestore/PropertyName;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private applyFieldAnnotations(Ljava/lang/reflect/Field;)V
    .locals 4
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 912
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    const-class v0, Lcom/google/firebase/firestore/ServerTimestamp;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 913
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 914
    .local v0, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Date;

    if-eq v0, v1, :cond_1

    const-class v1, Lcom/google/firebase/Timestamp;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 915
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 917
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is annotated with @ServerTimestamp but is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead of Date or Timestamp."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 922
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->serverTimestamps:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 925
    .end local v0    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-class v0, Lcom/google/firebase/firestore/DocumentId;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 926
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 927
    .restart local v0    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "Field"

    const-string v2, "is"

    invoke-direct {p0, v1, v2, v0}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->ensureValidDocumentIdType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 928
    iget-object v1, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->documentIdPropertyNames:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 930
    .end local v0    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    return-void
.end method

.method private applyGetterAnnotations(Ljava/lang/reflect/Method;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 933
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    const-class v0, Lcom/google/firebase/firestore/ServerTimestamp;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 934
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 935
    .local v0, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Date;

    if-eq v0, v1, :cond_1

    const-class v1, Lcom/google/firebase/Timestamp;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 936
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 938
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is annotated with @ServerTimestamp but returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead of Date or Timestamp."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 943
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->serverTimestamps:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 947
    .end local v0    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-class v0, Lcom/google/firebase/firestore/DocumentId;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 948
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 949
    .restart local v0    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "Method"

    const-string v2, "returns"

    invoke-direct {p0, v1, v2, v0}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->ensureValidDocumentIdType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 950
    iget-object v1, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->documentIdPropertyNames:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 952
    .end local v0    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    return-void
.end method

.method private applySetterAnnotations(Ljava/lang/reflect/Method;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 955
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    const-class v0, Lcom/google/firebase/firestore/ServerTimestamp;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 963
    const-class v0, Lcom/google/firebase/firestore/DocumentId;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 965
    .local v0, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "Method"

    const-string v2, "accepts"

    invoke-direct {p0, v1, v2, v0}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->ensureValidDocumentIdType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 966
    iget-object v1, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->documentIdPropertyNames:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 968
    .end local v0    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-void

    .line 956
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 958
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is annotated with @ServerTimestamp but should not be. @ServerTimestamp can only be applied to fields and getters, not setters."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureValidDocumentIdType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)V
    .locals 3
    .param p1, "fieldDescription"    # Ljava/lang/String;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/reflect/Type;

    .line 971
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    const-class v0, Ljava/lang/String;

    if-eq p3, v0, :cond_1

    const-class v0, Lcom/google/firebase/firestore/DocumentReference;

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 972
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is annotated with @DocumentId but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead of String or DocumentReference."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 980
    :cond_1
    :goto_0
    return-void
.end method

.method private static isSetterOverride(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 6
    .param p0, "base"    # Ljava/lang/reflect/Method;
    .param p1, "override"    # Ljava/lang/reflect/Method;

    .line 1066
    nop

    .line 1067
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    .line 1066
    const-string v1, "Expected override from a base class"

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$500(ZLjava/lang/String;)V

    .line 1069
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Expected void return type"

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$500(ZLjava/lang/String;)V

    .line 1070
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$500(ZLjava/lang/String;)V

    .line 1072
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 1073
    .local v0, "baseParameterTypes":[Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 1074
    .local v1, "overrideParameterTypes":[Ljava/lang/reflect/Type;
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v5, "Expected exactly one parameter"

    invoke-static {v2, v5}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$500(ZLjava/lang/String;)V

    .line 1075
    array-length v2, v1

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2, v5}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$500(ZLjava/lang/String;)V

    .line 1077
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v0, v3

    aget-object v5, v1, v3

    .line 1078
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    nop

    .line 1077
    :goto_2
    return v3
.end method

.method private populateDocumentIdProperties(Ljava/util/Map;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;Ljava/lang/Object;Ljava/util/HashSet;)V
    .locals 7
    .param p2, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "Ljava/lang/Class<",
            "TT;>;>;",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;",
            "TT;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 814
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    .local p1, "types":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<Ljava/lang/Class<TT;>;>;Ljava/lang/reflect/Type;>;"
    .local p3, "instance":Ljava/lang/Object;, "TT;"
    .local p4, "deserialzedProperties":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->documentIdPropertyNames:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 815
    .local v1, "docIdPropertyName":Ljava/lang/String;
    invoke-virtual {p4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 825
    iget-object v2, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->child(Ljava/lang/String;)Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    move-result-object v2

    .line 826
    .local v2, "childPath":Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    iget-object v3, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 827
    iget-object v3, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 828
    .local v3, "setter":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 829
    .local v4, "params":[Ljava/lang/reflect/Type;
    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 832
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-direct {p0, v5, p1}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->resolveType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 833
    .local v5, "resolvedType":Ljava/lang/reflect/Type;
    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_0

    .line 834
    iget-object v6, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->documentRef:Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/DocumentReference;->getId()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, p3, v6}, Lcom/google/firebase/firestore/util/ApiUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 836
    :cond_0
    iget-object v6, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->documentRef:Lcom/google/firebase/firestore/DocumentReference;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, p3, v6}, Lcom/google/firebase/firestore/util/ApiUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    .end local v3    # "setter":Ljava/lang/reflect/Method;
    .end local v4    # "params":[Ljava/lang/reflect/Type;
    .end local v5    # "resolvedType":Ljava/lang/reflect/Type;
    :goto_1
    goto :goto_3

    .line 830
    .restart local v3    # "setter":Ljava/lang/reflect/Method;
    .restart local v4    # "params":[Ljava/lang/reflect/Type;
    :cond_1
    const-string v0, "Setter does not have exactly one parameter"

    invoke-static {v2, v0}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$200(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 839
    .end local v3    # "setter":Ljava/lang/reflect/Method;
    .end local v4    # "params":[Ljava/lang/reflect/Type;
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 841
    .local v3, "docIdField":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_3

    .line 842
    iget-object v4, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->documentRef:Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/DocumentReference;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 844
    :cond_3
    iget-object v4, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->documentRef:Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {v3, p3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :goto_2
    nop

    .line 850
    .end local v1    # "docIdPropertyName":Ljava/lang/String;
    .end local v2    # "childPath":Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .end local v3    # "docIdField":Ljava/lang/reflect/Field;
    :goto_3
    goto :goto_0

    .line 846
    .restart local v1    # "docIdPropertyName":Ljava/lang/String;
    .restart local v2    # "childPath":Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .restart local v3    # "docIdField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 847
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 816
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "childPath":Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .end local v3    # "docIdField":Ljava/lang/reflect/Field;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' was found from document "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->documentRef:Lcom/google/firebase/firestore/DocumentReference;

    .line 820
    invoke-virtual {v2}, Lcom/google/firebase/firestore/DocumentReference;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", cannot apply @DocumentId on this property for class "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    .line 822
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 851
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "docIdPropertyName":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private static propertyName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 1082
    invoke-static {p0}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->annotatedName(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/String;

    move-result-object v0

    .line 1083
    .local v0, "annotatedName":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 1087
    invoke-static {p0}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->annotatedName(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, "annotatedName":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->serializedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private resolveType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .locals 4
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "Ljava/lang/Class<",
            "TT;>;>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 854
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    .local p2, "types":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<Ljava/lang/Class<TT;>;>;Ljava/lang/reflect/Type;>;"
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1

    .line 855
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 856
    .local v0, "resolvedType":Ljava/lang/reflect/Type;
    if-eqz v0, :cond_0

    .line 859
    return-object v0

    .line 857
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not resolve type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 862
    .end local v0    # "resolvedType":Ljava/lang/reflect/Type;
    :cond_1
    return-object p1
.end method

.method private static serializedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "methodName"    # Ljava/lang/String;

    .line 1101
    const-string v0, "set"

    const-string v1, "is"

    const-string v2, "get"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1102
    .local v0, "prefixes":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1103
    .local v1, "methodPrefix":Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1104
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1105
    move-object v1, v4

    .line 1103
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1108
    :cond_1
    if-eqz v1, :cond_3

    .line 1111
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1114
    .local v2, "strippedName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1115
    .local v3, "chars":[C
    const/4 v4, 0x0

    .line 1116
    .local v4, "pos":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-char v5, v3, v4

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1117
    aget-char v5, v3, v4

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    aput-char v5, v3, v4

    .line 1118
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1120
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 1109
    .end local v2    # "strippedName":Ljava/lang/String;
    .end local v3    # "chars":[C
    .end local v4    # "pos":I
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Bean prefix for method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static shouldIncludeField(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 1042
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1043
    return v1

    .line 1046
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1047
    return v1

    .line 1050
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1051
    return v1

    .line 1054
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1055
    return v1

    .line 1058
    :cond_3
    const-class v0, Lcom/google/firebase/firestore/Exclude;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1059
    return v1

    .line 1061
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private static shouldIncludeGetter(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 983
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "is"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 984
    return v1

    .line 987
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 988
    return v1

    .line 991
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 992
    return v1

    .line 995
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 996
    return v1

    .line 999
    :cond_3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1000
    return v1

    .line 1003
    :cond_4
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_5

    .line 1004
    return v1

    .line 1007
    :cond_5
    const-class v0, Lcom/google/firebase/firestore/Exclude;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1008
    return v1

    .line 1010
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private static shouldIncludeSetter(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 1014
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1015
    return v1

    .line 1018
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1019
    return v1

    .line 1022
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1023
    return v1

    .line 1026
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1027
    return v1

    .line 1030
    :cond_3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    .line 1031
    return v1

    .line 1034
    :cond_4
    const-class v0, Lcom/google/firebase/firestore/Exclude;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1035
    return v1

    .line 1037
    :cond_5
    return v2
.end method


# virtual methods
.method deserialize(Ljava/util/Map;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;
    .locals 1
    .param p2, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;",
            ")TT;"
        }
    .end annotation

    .line 743
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->deserialize(Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method deserialize(Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;
    .locals 11
    .param p3, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "Ljava/lang/Class<",
            "TT;>;>;",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;",
            ")TT;"
        }
    .end annotation

    .line 750
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "types":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<Ljava/lang/Class<TT;>;>;Ljava/lang/reflect/Type;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_7

    .line 759
    invoke-static {v0}, Lcom/google/firebase/firestore/util/ApiUtil;->newInstance(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    move-result-object v0

    .line 760
    .local v0, "instance":Ljava/lang/Object;, "TT;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 761
    .local v1, "deserialzedProperties":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 762
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 763
    .local v4, "propertyName":Ljava/lang/String;
    iget-object v5, p3, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    invoke-virtual {v5, v4}, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->child(Ljava/lang/String;)Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    move-result-object v5

    .line 764
    .local v5, "childPath":Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    iget-object v6, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 765
    iget-object v6, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    .line 766
    .local v6, "setter":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 767
    .local v7, "params":[Ljava/lang/reflect/Type;
    array-length v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 770
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-direct {p0, v8, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->resolveType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 771
    .local v8, "resolvedType":Ljava/lang/reflect/Type;
    nop

    .line 773
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p3, v5}, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->newInstanceWithErrorPath(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;)Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    move-result-object v10

    .line 772
    invoke-static {v9, v8, v10}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$300(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;

    move-result-object v9

    .line 774
    .local v9, "value":Ljava/lang/Object;
    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v6, v0, v10}, Lcom/google/firebase/firestore/util/ApiUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 776
    .end local v6    # "setter":Ljava/lang/reflect/Method;
    .end local v7    # "params":[Ljava/lang/reflect/Type;
    .end local v8    # "resolvedType":Ljava/lang/reflect/Type;
    .end local v9    # "value":Ljava/lang/Object;
    goto/16 :goto_1

    .line 768
    .restart local v6    # "setter":Ljava/lang/reflect/Method;
    .restart local v7    # "params":[Ljava/lang/reflect/Type;
    :cond_0
    const-string v2, "Setter does not have exactly one parameter"

    invoke-static {v5, v2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$200(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 776
    .end local v6    # "setter":Ljava/lang/reflect/Method;
    .end local v7    # "params":[Ljava/lang/reflect/Type;
    :cond_1
    iget-object v6, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 777
    iget-object v6, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    .line 778
    .local v6, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->resolveType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 779
    .local v7, "resolvedType":Ljava/lang/reflect/Type;
    nop

    .line 781
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p3, v5}, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->newInstanceWithErrorPath(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;)Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    move-result-object v9

    .line 780
    invoke-static {v8, v7, v9}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$300(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;

    move-result-object v8

    .line 783
    .local v8, "value":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v6, v0, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    nop

    .line 787
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 788
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "resolvedType":Ljava/lang/reflect/Type;
    .end local v8    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 784
    .restart local v6    # "field":Ljava/lang/reflect/Field;
    .restart local v7    # "resolvedType":Ljava/lang/reflect/Type;
    .restart local v8    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 785
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 789
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "resolvedType":Ljava/lang/reflect/Type;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No setter/field for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " found on class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    .line 790
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 791
    .local v6, "message":Ljava/lang/String;
    iget-object v7, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 792
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (fields/setters are case sensitive!)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 794
    :cond_3
    iget-boolean v7, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->throwOnUnknownProperties:Z

    if-nez v7, :cond_5

    .line 796
    iget-boolean v7, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->warnOnUnknownProperties:Z

    if-eqz v7, :cond_4

    .line 797
    const-class v7, Lcom/google/firebase/firestore/util/CustomClassMapper;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "%s"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 800
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "propertyName":Ljava/lang/String;
    .end local v5    # "childPath":Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .end local v6    # "message":Ljava/lang/String;
    :cond_4
    :goto_1
    goto/16 :goto_0

    .line 795
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "propertyName":Ljava/lang/String;
    .restart local v5    # "childPath":Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .restart local v6    # "message":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 801
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "propertyName":Ljava/lang/String;
    .end local v5    # "childPath":Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .end local v6    # "message":Ljava/lang/String;
    :cond_6
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->populateDocumentIdProperties(Ljava/util/Map;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;Ljava/lang/Object;Ljava/util/HashSet;)V

    .line 803
    return-object v0

    .line 751
    .end local v0    # "instance":Ljava/lang/Object;, "TT;"
    .end local v1    # "deserialzedProperties":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_7
    iget-object v0, p3, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    .line 754
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not define a no-argument constructor. If you are using ProGuard, make sure these constructors are not stripped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 751
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$200(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method serialize(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;)Ljava/util/Map;
    .locals 6
    .param p2, "path"    # Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 868
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 875
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 876
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 878
    .local v2, "property":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->documentIdPropertyNames:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 879
    goto :goto_0

    .line 883
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->getters:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 884
    iget-object v3, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->getters:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 885
    .local v3, "getter":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, p1, v4}, Lcom/google/firebase/firestore/util/ApiUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 886
    .local v3, "propertyValue":Ljava/lang/Object;
    goto :goto_1

    .line 888
    .end local v3    # "propertyValue":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 889
    .local v3, "field":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_3

    .line 893
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    .local v4, "propertyValue":Ljava/lang/Object;
    move-object v3, v4

    .line 900
    .end local v4    # "propertyValue":Ljava/lang/Object;
    .local v3, "propertyValue":Ljava/lang/Object;
    :goto_1
    iget-object v4, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->serverTimestamps:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    .line 902
    invoke-static {}, Lcom/google/firebase/firestore/FieldValue;->serverTimestamp()Lcom/google/firebase/firestore/FieldValue;

    move-result-object v4

    .local v4, "serializedValue":Ljava/lang/Object;
    goto :goto_2

    .line 904
    .end local v4    # "serializedValue":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p2, v2}, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->child(Ljava/lang/String;)Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$400(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;)Ljava/lang/Object;

    move-result-object v4

    .line 906
    .restart local v4    # "serializedValue":Ljava/lang/Object;
    :goto_2
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    .end local v2    # "property":Ljava/lang/String;
    .end local v3    # "propertyValue":Ljava/lang/Object;
    .end local v4    # "serializedValue":Ljava/lang/Object;
    goto :goto_0

    .line 894
    .restart local v2    # "property":Ljava/lang/String;
    .local v3, "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 895
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 890
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bean property without field or getter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 908
    .end local v2    # "property":Ljava/lang/String;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_4
    return-object v0

    .line 869
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t serialize object of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 871
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with BeanMapper for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
