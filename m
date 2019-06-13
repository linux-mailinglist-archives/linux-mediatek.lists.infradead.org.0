Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 551E644F85
	for <lists+linux-mediatek@lfdr.de>; Fri, 14 Jun 2019 00:49:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/7/setUzxUpKVwygaVz3ztBlEUn5FcTH0PhN10swpE=; b=LIgNOHuowcBDu5
	OIgru09WWarQc9prciOJXRJY1t6EsVpS2GMkEH03NfWXLaiJeokHnX9YssDAShclJv3fEUPjnaR2B
	FSX8srjiS6B+rVPk5Xi+1QtUAPfPxlbQUqJAHg6sgckzbQA3L683FwTqPJsSwryCgEFZ8AfiDhLIH
	VV7Hun1ekLyyTw2lXJHXUAhqI7oKA8WvZ1uUQGdIWWVYoxKh4kV+TMdXmfm3aju6GTmnilGp4eAXE
	VegjlbwUeUP12cDvqBbGTzK8naAzOwRBIQJ4bvXi5gWvA62iwJA9ThPacTPoa6E66tQliPzq+KAsQ
	OEPwQruA4uETW9YxpkWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbYXL-0000ZZ-82; Thu, 13 Jun 2019 22:49:39 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbYX7-0000PA-CP; Thu, 13 Jun 2019 22:49:26 +0000
Received: by mail-qk1-f195.google.com with SMTP id r6so517431qkc.0;
 Thu, 13 Jun 2019 15:49:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qMfB3pkeiAOw5VCNnYbb1aIh4uwpJYsVqT9RDBEzeoo=;
 b=bzIkWKVPS/b2fv+BCq6Lwoe7OFdaZbVXMe9xA/A69oJzUGqWplbPsg11qPMDpiYgAb
 WQm4O7ebSiCS3LtNn6ICyZ7cEaMzp0EaqIl2dqkrch0IkZ3NvRVDDVs24GFTjjfpcOsg
 rr4KK1QAevop0JkUKWBc2rivOroLo1bCENuewBJmcTkAnh18IKunPH8YyYdmq15k/Dwb
 KKutgFOxq3WAxhhvUeDZgtPYiW8gxidIcbvXBsQOaGjUZ1jzkyRjyrqKS4/geWgS17FX
 k6grjmQ1iaD06M5QZtHYZkAvYXtxLMuvVZb4Q9LJ0sacmvCykPLzOZokEUjh0bKTlbQU
 tJFQ==
X-Gm-Message-State: APjAAAWSN7oZXMrqj6NZvVuKNHRQW1ziHuicIHCM/HJIcK7G+X0EjlOd
 cmOwHc9pZmXitQqgrCtKFQ==
X-Google-Smtp-Source: APXvYqy3G8V8zTqhCxQHP2ptBgkBUTEr2ls7NUIIjjZbO2+WaM6bJrXPDxWPTfnmRyQjpzImoLmB9g==
X-Received: by 2002:ae9:c208:: with SMTP id j8mr72747599qkg.264.1560466164117; 
 Thu, 13 Jun 2019 15:49:24 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id c18sm439128qkm.78.2019.06.13.15.49.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 15:49:23 -0700 (PDT)
Date: Thu, 13 Jun 2019 16:49:21 -0600
From: Rob Herring <robh@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>, arm@kernel.org
Subject: Re: [PATCH v3] dt-bindings: arm: Convert MediaTek board/soc bindings
 to json-schema
Message-ID: <20190613224921.GA9199@bogus>
References: <20190517154202.24594-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517154202.24594-1-robh@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_154925_425855_D401ECFE 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 10:42:02AM -0500, Rob Herring wrote:
> Convert MediaTek SoC bindings to DT schema format using json-schema.
> 
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-mediatek@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v3:
>  - Rebase to Linus' master
> 
>  .../devicetree/bindings/arm/mediatek.txt      | 89 ------------------
>  .../devicetree/bindings/arm/mediatek.yaml     | 91 +++++++++++++++++++
>  2 files changed, 91 insertions(+), 89 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/mediatek.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/mediatek.yaml

Ping. Three versions of this and no comments... Is Mediatek a dead 
platform?

Rob

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
