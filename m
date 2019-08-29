Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B20FFA272A
	for <lists+linux-mediatek@lfdr.de>; Thu, 29 Aug 2019 21:17:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TSHomMnD0q+cGZ0U/rvimT2X3WHhSCibGRb4J1VkgHk=; b=uod5uGNXhNvFRu
	BbM9sXY0ONpouE/kLXkaFoVU8kWLys8VPNXI69cRl3++0SFgFf5XhtToO3JG99psS/csYrIX5Yb0d
	OFENsKiSzpMmjNnOsBz42+cLXU70JrZH9xAnV8miZPV4GgJXXYO//X4CZbWZ5Nd5PJShnT4g6jhz6
	YgLs5WBSDeHEcr4oDnwI1wGwBZq7MCsZsRMp2F3SgPcrVSTXt2KtpeM1QgvvRTnzecZamYklcclQp
	seMmftDCGwExg0vWaRCW/pXLIjPHNyGZLSBkeSmjOIGbPL2bEKU/FQmxd3P9PwKkG40czfaAgTWyH
	RM+amdAFb+Wsk9OzNjBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3PvT-0006O7-Sc; Thu, 29 Aug 2019 19:17:43 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3PvQ-0006Nb-P3
 for linux-mediatek@lists.infradead.org; Thu, 29 Aug 2019 19:17:42 +0000
Received: by mail-ot1-f68.google.com with SMTP id g111so1492999otg.9
 for <linux-mediatek@lists.infradead.org>; Thu, 29 Aug 2019 12:17:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lUNDK8okeaG+StRZk49PqR3pb3KxBcvMlQlvR84IJuE=;
 b=eYVivedbFQ8djopmiqtHk7HyslAb39Z1hX4/Gg46o+9cnrwVlj2/s4zmqvjyAVrgBY
 bZK43Y8MZ2iLcjRjipDodt0BqWMQKPW9Gj2Zxfv35vU90jlnv4NGLmmHJS3CpmOj2/3f
 lyACbDXXGVMvWEoyl1CjG6yMCR0ccOO3R8fxfACnbuu0Nm3pNTEKjU9ndgyT6pesr0Kx
 Rr1WGBuN7nLyxuZYJUolf+e1OMDOAliRG2kFLPPA+sg4pjXYun60O36L8bCoEnoR4Vxz
 z7DK9UTRf6Yprmp5G25JYVS9dJjM6Nxhxz/nGGEPfalUkZeif6vp81JIojSOtlaxEe+h
 0/Sg==
X-Gm-Message-State: APjAAAWmI9zevcztlYYvEsZa+vyJKxqfWQ7gK2bpvWXDLsjHvk7sVmC/
 gaBYy+rOizm12zm5KPeCkg==
X-Google-Smtp-Source: APXvYqwjleFRjcjRc0Auu8E/bMXkfJn6aIIX5yibCMAZNhu85rTpuRR7DK/sUMIDH60M3OWn/+ol1Q==
X-Received: by 2002:a9d:4717:: with SMTP id a23mr8773212otf.212.1567106259689; 
 Thu, 29 Aug 2019 12:17:39 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c15sm1106792otf.35.2019.08.29.12.17.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 12:17:39 -0700 (PDT)
Date: Thu, 29 Aug 2019 14:17:38 -0500
From: Rob Herring <robh@kernel.org>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [PATCH v6 10/11] dt-bindings: pwm: update bindings for MT7629 SoC
Message-ID: <20190829191738.GA17395@bogus>
References: <1567057160-552-1-git-send-email-sam.shih@mediatek.com>
 <1567057160-552-11-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567057160-552-11-git-send-email-sam.shih@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_121740_808183_97B3152C 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 01:39:19PM +0800, Sam Shih wrote:
> From: Ryder Lee <ryder.lee@mediatek.com>
> 
> This updates bindings for MT7629 pwm controller.
> 
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> ---
> Changes since v1:
> - add a Reviewed-by tag

I believe you missed mine.

> 
> ---
>  Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> index ea95b490a913..c7bd5633d1eb 100644
> --- a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> +++ b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> @@ -6,6 +6,7 @@ Required properties:
>     - "mediatek,mt7622-pwm": found on mt7622 SoC.
>     - "mediatek,mt7623-pwm": found on mt7623 SoC.
>     - "mediatek,mt7628-pwm": found on mt7628 SoC.
> +   - "mediatek,mt7629-pwm", "mediatek,mt7622-pwm": found on mt7629 SoC.
>   - reg: physical base address and length of the controller's registers.
>   - #pwm-cells: must be 2. See pwm.txt in this directory for a description of
>     the cell format.
> -- 
> 2.17.1
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
