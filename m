Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9E41348B4
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 Jan 2020 17:58:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/FjSwqFI1op7CD/S4FIuHzztaQY8fYnzT3kSJQL4nA=; b=Wk1t/6cn3HC9Pj
	w9iZUa+GW/n8QmjhJxRNbryoL25uqQ15HiGli1XlKmQC2bCdp3SWYVgEBqq/hGUn0UTyynx9BbLS4
	E74lzN3wzTF3vcSntvt0lFiRBnTjG3XuWOdtioLlv6UUFBI0MG054dTdxil9vMiI6u0n9hHuSabKK
	omLLkuULXe2KK+hCCl3XGEDkylmrHr/QSVkpwoCF+KwX7/MtAMos71a3wvsGF/cXOPuqF1UgkiIi4
	jH5dtCG0tH8raTmEHIDYwHJWv2jtZdLUXKSzVsCbhTZBIMmNRXaIsfuWKxqokG00ELFHondLViwSA
	1PkOe17qAZNpcO/lYIiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipEfS-0000UY-Ft; Wed, 08 Jan 2020 16:58:50 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipEfP-0000Tx-WE
 for linux-mediatek@lists.infradead.org; Wed, 08 Jan 2020 16:58:49 +0000
Received: by mail-ot1-f65.google.com with SMTP id r27so4220192otc.8
 for <linux-mediatek@lists.infradead.org>; Wed, 08 Jan 2020 08:58:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TEWqrKckxXi7QmpFNDQI2lr/8vlOr4RUJSG6WcBUQm8=;
 b=Dz3EauzoZuccE3OBi0hYpfIFQzy5b3XHFRAiXFa8a6Cgj28XPLcMjLIhbzciG0/oJO
 KAnGAwxGOw7jOtpY0PqALBq50KWFrN79MDeFakW4Din/YmavAua6rxyumMzI6eEmrS3B
 9r1wv8lm5DQqdjrY22sX0RnFNL7UmWdFVM2unTbxfLPkVXRI1JkD3IiXfeIjF91sPUq3
 4r8yMNVlGkWqdLktIXKSV2ZSeKUa8Rl6xyDXKG4R5Sner2opYSUF2yX4nw55BMg0UcRl
 l4ajevnCotnfyKAzOJvLNFkQ9UU8lGhKlkSaguC2Ote09VSl4yK3NYA/A+BNJlFyxnNX
 UiSw==
X-Gm-Message-State: APjAAAWXCx0J1CsaarcOhY5IXYAd6o/hHThJ/r/1MipozLmIPsoh4ot8
 QvNBoHOfx3/ZLUvW3SCqWmfBZJY=
X-Google-Smtp-Source: APXvYqwP04q1lx9bCjtc83E8/alswRlTQSFs8PoEMU+krcc68u7TBlC1lWCoWqP9qvkJgRK2+In0dQ==
X-Received: by 2002:a9d:730e:: with SMTP id e14mr4632860otk.62.1578502727030; 
 Wed, 08 Jan 2020 08:58:47 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n22sm1308256otj.36.2020.01.08.08.58.45
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 08:58:46 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220333
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 08 Jan 2020 10:58:45 -0600
Date: Wed, 8 Jan 2020 10:58:45 -0600
From: Rob Herring <robh@kernel.org>
To: Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH 1/2] dt-bindings: iommu: Add binding for MediaTek MT8167
 IOMMU
Message-ID: <20200108165845.GA8360@bogus>
References: <20200103162632.109553-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200103162632.109553-1-fparent@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_085848_034302_A33047A8 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, joro@8bytes.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri,  3 Jan 2020 17:26:31 +0100, Fabien Parent wrote:
> This commit adds IOMMU binding documentation for the MT8167 SoC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
>  Documentation/devicetree/bindings/iommu/mediatek,iommu.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
