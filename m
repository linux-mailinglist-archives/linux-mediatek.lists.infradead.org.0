Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7D8186F04
	for <lists+linux-mediatek@lfdr.de>; Mon, 16 Mar 2020 16:48:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2jlJ7lBQNsq4gjvxOiDy8GNMB9AwFBqN+ZzBuXYpuU=; b=Ba4oq6ojMGag0V
	1hdFJjZKXG7HizIphopLYNaZuaYfoTetJgbfnGyCjt8hrwxa/YFt+J3No54jB2OxL4EWGgRe0Lhne
	u2G/0K31MZL/V/ZAaVJ+fb83o6oMUrBH5nZIR6fkH4L61Q4sWgtQATJ5+I6onmEcj6tXfx6/aCLjD
	Hhn0n+FSivGUg9ulKyG6ojJPNJJTHe5sfNWliw4z+iAsAivaoodo+DFtIKjSy37Z86601aOWK5vUU
	gjGIcWz9wobfmkDCgNS8lZNQ7BSAOWnDvWY1J883TEFwQk/SE2dYNcLZcABTm59nq+gRImw4uq1zS
	w32iAygqaUbt5u9SZyVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDryF-0002u3-2q; Mon, 16 Mar 2020 15:48:03 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDryB-0002tI-6x
 for linux-mediatek@lists.infradead.org; Mon, 16 Mar 2020 15:48:00 +0000
Received: by mail-wr1-x444.google.com with SMTP id y2so6370557wrn.11
 for <linux-mediatek@lists.infradead.org>; Mon, 16 Mar 2020 08:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=J+yCX5u1YDN6eK0N92vhv3vwdN0qX/QOnRznwSw/NEU=;
 b=wqEM+8T/4h/xHj/JCPK+rRTCXxcVR4eDf7FRmVy6tL77x3zHH/AiX26KSVcpaAUPYM
 H2E3TxgVcsUZps0ZwbKrOGHGA1w+q7Tk9JZyHOG4r0miXlsNK9DAr6ASz77gWGMYoThi
 aqIcdck8zrW9cmOsVNIVfmvriv2jyBKV2gCHKWxDzNBhDSaeuNibLyNo1rN/KPESbvGx
 bYFXAMI7K3kXwTe2xy6IA/A4hJbQRhpt2ZZKRbDn2/H/Lo/rmmzCexG9w/kcno6ZiI77
 ppej5XGet0RlmPFvfqjzVDbUXtrDAc80RMkysk6JhzvWsm3/Qn/rhmBAkBM9JFQCl/h+
 nSCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=J+yCX5u1YDN6eK0N92vhv3vwdN0qX/QOnRznwSw/NEU=;
 b=FcrT+QT471uNS+soh7aMiem5N70yOEdwZ/eFTzb8GvnN8Lxt3hHeLCjZ0HxoSrALjz
 X6TIhzozfzFhLcGI/22gUn3A36FCh9iuPEL/3ReLbb9ElkxVBEXPVbSVhkG7REsxPd3D
 MZLrjo1KXtTs8RBCzEQu/UpmtxtEGHKvwYN6KWWsSrlm+6u9pmf9cA+DL4a2EXErRemc
 0FmuKDuqr16cU4tLmaW3NsNLn4ZR+yCQWTiOAugQfESXriKGFsWcmLIRcL3ER+CtiCe0
 9vPK61bRUB5MTp6ROeElkf1AO0iMzpje4IMw4lSlc+ipqOvQM6Ga5kvUxiwdIrgOXV+I
 gT6g==
X-Gm-Message-State: ANhLgQ2Jm88W17Eo4TnhqAPFmNH/BKuNc3NW8QP4bGAtI2plxOen8Nea
 UKuoHpU7f9KbgJa45371XdE6kg==
X-Google-Smtp-Source: ADFU+vu7BwV9+IRhzha1mvLv+qxjTZOswhDVu8mc2cK8kbLXKQAY/jWE86j0EqeFBPhJwYU3dCMzFg==
X-Received: by 2002:adf:f510:: with SMTP id q16mr6841064wro.43.1584373677809; 
 Mon, 16 Mar 2020 08:47:57 -0700 (PDT)
Received: from myrica ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id l7sm488506wrw.33.2020.03.16.08.47.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 08:47:57 -0700 (PDT)
Date: Mon, 16 Mar 2020 16:47:49 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH 08/15] iommu: Introduce accessors for iommu private data
Message-ID: <20200316154749.GI304669@myrica>
References: <20200310091229.29830-1-joro@8bytes.org>
 <20200310091229.29830-9-joro@8bytes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310091229.29830-9-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_084759_256943_49E8E02B 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Clark <robdclark@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-msm@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org,
 iommu@lists.linux-foundation.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Joerg Roedel <jroedel@suse.de>, Hanjun Guo <guohanjun@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Sean Paul <sean@poorly.run>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 10:12:22AM +0100, Joerg Roedel wrote:
> From: Joerg Roedel <jroedel@suse.de>
> 
> Add dev_iommu_priv_get/set() functions to access per-device iommu
> private data. This makes it easier to move the pointer to a different
> location.
> 
> Tested-by: Will Deacon <will@kernel.org> # arm-smmu
> Signed-off-by: Joerg Roedel <jroedel@suse.de>

Reviewed-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

> ---
>  include/linux/iommu.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/include/linux/iommu.h b/include/linux/iommu.h
> index f5edc21a644d..056900e75758 100644
> --- a/include/linux/iommu.h
> +++ b/include/linux/iommu.h
> @@ -627,6 +627,16 @@ static inline void dev_iommu_fwspec_set(struct device *dev,
>  	dev->iommu->fwspec = fwspec;
>  }
>  
> +static inline void *dev_iommu_priv_get(struct device *dev)
> +{
> +	return dev->iommu->fwspec->iommu_priv;
> +}
> +
> +static inline void dev_iommu_priv_set(struct device *dev, void *priv)
> +{
> +	dev->iommu->fwspec->iommu_priv = priv;
> +}
> +
>  int iommu_probe_device(struct device *dev);
>  void iommu_release_device(struct device *dev);
>  
> -- 
> 2.17.1
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
