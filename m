Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4589F0BC
	for <lists+linux-mediatek@lfdr.de>; Tue, 27 Aug 2019 18:50:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kOYs/VyVapXGCPteJXPSmYqdZOeOtw44cymb0rSwXh4=; b=VO03YB6OBgPMs4
	XLtNmI/L2IVXcJ9+p8f/Pagb6ASXAt43xRLUBKwlURzHx8XR0NWliw3/MooO7JuMfvlFq09yiDO0a
	Esi2Ph9rVZ1GdQ9bSZcdQiy6gFlbGyz0tOtXYni7sDVVPI2QBhQWWUTdBsjSrsfsmT3x7741tybMq
	s1KTm0NMtZoZ3xYqu4TRJjodOah4E3kI233qGbr8FS8/2b9f26cx18LFtG3LdosGMObX2CRBPpILD
	VWbVHY2/m5DcJPgJ6tXBGiIxq6uQ1nTq2Vfk3mBNHLFsVOHh7/X81ylBLcA4WckTgNFr+fHhfsXbn
	weruPAvm5L5/LNX+nB8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2egI-0004Jz-Ou; Tue, 27 Aug 2019 16:50:54 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2egG-0004JG-3q
 for linux-mediatek@lists.infradead.org; Tue, 27 Aug 2019 16:50:53 +0000
Received: by mail-ot1-f68.google.com with SMTP id e12so19311314otp.10
 for <linux-mediatek@lists.infradead.org>; Tue, 27 Aug 2019 09:50:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fqBFilW3Taxmqkkc+lbabtCZRi69qq/O3UlJxrJchrY=;
 b=JJmiEXtDLgmjAxuJaqpBVuiCHzBb8ezhnWceJGDj9Z8sl8mjLiqFJ6/1pMk0xAW2qL
 IvU1IOMa+VejG7k6l4GaNNpQ+jTe1xAt84DZmf967r+XeP32Oeut+TPqRozhrz96iLkv
 cbf/9vfGCCw8NppK65wpzi4L9TyT6AKlfAHhrhEF0Z4RbwBJ52F8o3Uh4R/awXn8Q7nf
 exVJbT8yhCC5zTFEz+ZtHfuL6wwHoOiecva0+3VCLGBfEYt0dSJ/uOyi7dbSdmoPb18X
 SUiv978+mrK4owam/hXJObvfcmf2wL5CPKdt6g2JU3fcugTVKIAigCChG3EO4X8Tu7wS
 y53w==
X-Gm-Message-State: APjAAAU67q5iafF7+QOtYNAMg1Kzg4sXCR5D/19JVLyDF1NsEs2OzVix
 h70sPQnVZU+FYJtR88LstQ==
X-Google-Smtp-Source: APXvYqyw4UG0idfNDJmbNZqg1Onu34fcHoHyW1oudTW4c4m5Yz92ptA6VjcNj2jaiiv7lA3hJ7MwFg==
X-Received: by 2002:a9d:58c9:: with SMTP id s9mr17368581oth.16.1566924651011; 
 Tue, 27 Aug 2019 09:50:51 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g3sm6043222oti.41.2019.08.27.09.50.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 09:50:50 -0700 (PDT)
Date: Tue, 27 Aug 2019 11:50:50 -0500
From: Rob Herring <robh@kernel.org>
To: Mars Cheng <mars.cheng@mediatek.com>
Subject: Re: [PATCH v2 03/11] dt-bindings: irq: mtk,sysirq: add support for
 mt6779
Message-ID: <20190827165050.GA25969@bogus>
References: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com>
 <1566206502-4347-4-git-send-email-mars.cheng@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566206502-4347-4-git-send-email-mars.cheng@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_095052_154377_6E082B00 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Linus Walleij <linus.walleij@linaro.org>,
 Loda Chou <loda.chou@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Mars Cheng <mars.cheng@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, mtk01761 <wendell.lin@mediatek.com>,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 19 Aug 2019 17:21:34 +0800, Mars Cheng wrote:
> Add binding documentation of mediatek,sysirq for mt6779 SoC.
> 
> Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
> ---
>  .../interrupt-controller/mediatek,sysirq.txt       |    1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
