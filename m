Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F589131AD3
	for <lists+linux-mediatek@lfdr.de>; Mon,  6 Jan 2020 22:57:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqXuLLJOaMgTXHCCyjAxNtBbwwxMgQUIAc7UB+GGzY8=; b=eR6Bs9p1H1Z2Kr
	2K0n/g9ZdeOM/frpLPuU/cTj1Mq+PMpDU+P71rF9l1nwG0rttT3qDaUUIVgVwaQVD3AXSvxj7fHa4
	xMCgSq6orSe1kEHgF9wkN4g1QH0CSaDpRpFUDrfLTUsAWe2S5MADEaZoR/mMzXWZeOrd0p+7EyqOc
	MlaeooqK+odUM+ivSAw7wbBgpG0PU1p8yrb7l7NN95PLJZL0wc/E1ZFjr3ylePoLZHhQOxU01xbwV
	vmUYNvmHgLj6JzzNYZtYmDuAVKIpj7foIN1xNSwVLDxOqTX3AWOymZSWW1ocDALUFT62x51GWPczq
	1gF70yfigPNICC7IzT1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioaNU-0007j6-GA; Mon, 06 Jan 2020 21:57:36 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioaNF-0007Xl-Nl
 for linux-mediatek@lists.infradead.org; Mon, 06 Jan 2020 21:57:23 +0000
Received: by mail-ot1-f68.google.com with SMTP id d7so69091480otf.5
 for <linux-mediatek@lists.infradead.org>; Mon, 06 Jan 2020 13:57:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CGQuR1M/qYi2xyMJHlEfzvhIn09Q2tETaZrs1ID5PBc=;
 b=dQZhWRxzesL64NKVhN9EiHwg8IStl8hkmgVyMU27A0yA8dqXzvZ0J9HDWh/BUgjvSn
 krqbZ0zIS94qpequ8X9q+qTD8AMjxT3aw7AD8eTEUDOgEF73vgIpUvW3M7Y4QKFR3yI9
 8siS9o9J1eynYz304Js7xjXs6fxX3AOtjEnI6hlPZuCzAsJShQrUZoA6oUUqagHL1GfE
 oIbdYgaq1XX/0TGuOmX4pmWakzjfqGKOdHJdlw87nEcqx9pJOAE0CIhxgTd4Pv6IsXsl
 Fr3yfu0ElAivlJT4aMSdVkjgSH8ZtYhHA2Qane5rbzOWjmyzMzM/e0qN2xLlBytZbTE0
 zXtw==
X-Gm-Message-State: APjAAAUfLpf1Bn8MOFqlsUxegoxls+BZoXIoWK/gmvPmmo/XUDVb6FSA
 tOvXqKKwcobed9TEvLjtNvj2qQk=
X-Google-Smtp-Source: APXvYqxG6b9eIpl75KDmibXNkoGYk7oEFCIpp+P0FnbOVrCoFS7njBkYRjbe+oSv/smYFGKQbP1sYg==
X-Received: by 2002:a05:6830:1f95:: with SMTP id
 v21mr112109675otr.325.1578347840687; 
 Mon, 06 Jan 2020 13:57:20 -0800 (PST)
Received: from rob-hp-laptop (ip-70-5-121-225.ftwttx.spcsdns.net.
 [70.5.121.225])
 by smtp.gmail.com with ESMTPSA id p83sm21852554oia.51.2020.01.06.13.57.18
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 13:57:19 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220d32
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Mon, 06 Jan 2020 15:57:16 -0600
Date: Mon, 6 Jan 2020 15:57:16 -0600
From: Rob Herring <robh@kernel.org>
To: Chao Hao <chao.hao@mediatek.com>
Subject: Re: [PATCH v2 01/19] dt-bindings: mediatek: Add bindings for MT6779
Message-ID: <20200106215716.GA31059@bogus>
References: <20200105104523.31006-1-chao.hao@mediatek.com>
 <20200105104523.31006-2-chao.hao@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200105104523.31006-2-chao.hao@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_135721_770973_A52DC123 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Anan Sun <anan.sun@mediatek.com>, devicetree@vger.kernel.org,
 Jun Yan <jun.yan@mediatek.com>, wsd_upstream@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 Chao Hao <chao.hao@mediatek.com>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, Yong Wu <yong.wu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cui Zhang <zhang.cui@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sun, 5 Jan 2020 18:45:05 +0800, Chao Hao wrote:
> This patch adds description for MT6779 IOMMU.
> 
> MT6779 has two iommus, they are MM_IOMMU and APU_IOMMU which
> use ARM Short-Descriptor translation format.
> 
> The MT6779 IOMMU hardware diagram is as below, it is only a brief
> diagram about iommu, it don't focus on the part of smi_larb, so
> I don't describe the smi_larb detailedly.
> 
> 			     EMI
> 			      |
> 	   --------------------------------------
> 	   |					|
>         MM_IOMMU                            APU_IOMMU
> 	   |					|
>        SMI_COMMOM-----------		     APU_BUS
>           |		   |			|
>     SMI_LARB(0~11)  SMI_LARB12(FAKE)	    SMI_LARB13(FAKE)
> 	  |		   |			|
> 	  |		   |		   --------------
> 	  |		   |		   |	 |	|
>    Multimedia engine	  CCU		  VPU   MDLA   EMDA
> 
> All the connections are hardware fixed, software can not adjust it.
> 
> >From the diagram above, MM_IOMMU provides mapping for multimedia engine,
> but CCU is connected with smi_common directly, we can take them as larb12.
> APU_IOMMU provides mapping for APU engine, we can take them larb13.
> Larb12 and Larb13 are fake larbs.
> 
> Signed-off-by: Chao Hao <chao.hao@mediatek.com>
> ---
>  .../bindings/iommu/mediatek,iommu.txt         |   2 +
>  include/dt-bindings/memory/mt6779-larb-port.h | 215 ++++++++++++++++++
>  2 files changed, 217 insertions(+)
>  create mode 100644 include/dt-bindings/memory/mt6779-larb-port.h
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
