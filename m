Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E0C13C747
	for <lists+linux-mediatek@lfdr.de>; Wed, 15 Jan 2020 16:20:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ajM1spEhmg3YMlQg3lQVLkKgDuxab7Pfk+QrUjXVWV4=; b=kKc2LrSasKU4Q/
	K0KuL1Exe90ye8zFtIOJICEBkeaJ5NuvPbaj52RMiVJLdxkjvZsbjIVs/GWVtddsP99HZzC7hxCsV
	fuf8mDE+V1qIZ2OX14KirCNfxEK3NCJxhITDYWJp4mhggpCraYHNa4Q/D3YWqzw4m80u3v7Y+s6t3
	nbMpQAQ/b9Eyof/FvRbZ+9bkf7prVzAW57L0/yUYJGjSu8jGzq389gxPzYmUIiEvbfAvmu8UIIq7H
	jMQ00Coi+Z1FB9WEhy0/eYQdDZW7horwMVQ0QPr2veG0kT+fMyv3+rl2KmZP8ZiUEA4U+GHE4KV0L
	b38RDnE7aiX8on9EZT1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irkSV-0004yU-Ll; Wed, 15 Jan 2020 15:19:51 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irkSO-0004xA-6n
 for linux-mediatek@lists.infradead.org; Wed, 15 Jan 2020 15:19:49 +0000
Received: by mail-ot1-f66.google.com with SMTP id a15so16415919otf.1
 for <linux-mediatek@lists.infradead.org>; Wed, 15 Jan 2020 07:19:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eb54G3sc1CCAx4sR/HWrdZKKEAIXwHpDF1vWmKUoplc=;
 b=sSwKCCA6sFxMV28jk6VTtaROMLoDFYO93vMWBvfZr5PTK1YOmc0uWMYlKkYZz/Nrsu
 4KoXeNFZ33FZFtqrkkK4tQSNzpt13ZyiN45RV8zw4CtnN3qCTpYO1CxoqRYNFRlIO9xr
 FWXMbuzkzVUwocBDw3h3mSjAAbHtlu8N0iGSv6mDScF13BdrH/AlQNJ+gQ0OsFbS61KG
 CwKxHIYsTV3a1sLUuRt1qfyfiLaTRbCyv82+ranfHRCZMqvhu33722wFIEfAlJJhdgoo
 ZJ/GGj9tNgO9Xpg0DDF80WrcGb8wsw5/65YT+JnGIWzrKAXWJYhTGNGIwAlICPBauPNk
 JHEA==
X-Gm-Message-State: APjAAAXraV4K0z0sPCRGPbDnoggt2y4i7E9ku0O5S+jDVDA6r7fIcrHu
 /hfucFjx7tHdiNFiDuf5nDEJ7w0=
X-Google-Smtp-Source: APXvYqzFqac6rMzo2yvswxXM0SLZqsoa8zXy7J3nmjMErJ1cnCxHmMixeOGhaEktlBUUXKLqCUNe4g==
X-Received: by 2002:a05:6830:2147:: with SMTP id
 r7mr3175182otd.94.1579101583370; 
 Wed, 15 Jan 2020 07:19:43 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j8sm2405638oii.32.2020.01.15.07.19.38
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 07:19:40 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220379
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 15 Jan 2020 09:19:38 -0600
Date: Wed, 15 Jan 2020 09:19:38 -0600
From: Rob Herring <robh@kernel.org>
To: matthias.bgg@kernel.org
Subject: Re: [PATCH] dt-bindings: mfd: mediatek: Add MT6397 Pin Controller
Message-ID: <20200115151938.GA8182@bogus>
References: <20200110145952.9720-1-matthias.bgg@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110145952.9720-1-matthias.bgg@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_071944_245063_882ED356 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 15:59:51 +0100, matthias.bgg@kernel.org wrote:
> From: Matthias Brugger <matthias.bgg@gmail.com>
> 
> The MT6397 mfd includes a pin controller. Add binding
> a description for it.
> 
> Signed-off-by: Matthias Brugger <matthias.bgg@gmail.com>
> 
> ---
> 
>  Documentation/devicetree/bindings/mfd/mt6397.txt | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
