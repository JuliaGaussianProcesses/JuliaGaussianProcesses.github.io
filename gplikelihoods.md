@def add_docs = true
@def docs_url = "https://juliagaussianprocesses.github.io/GPLikelihoods.jl/dev/"
@def title = "GPLikelihoods"
@def description = ""
@def use_header_img = true
@def add_github_view = true
@def add_github_star = true
@def github_repo = "JuliaGaussianProcesses/GPLikelihoods.jl"

\begin{section}{name="GPLikelihoods.jl", title="GPLikelihoods.jl"}

\lead{
GPLikelihoods aims at facilitating the use of latent models with non-conjugate likelihoods.
The goal is to represent different models such as classification $y \sim \textrm{Bernoulli}(g(f(x))))$ or event counting ${y \sim \textrm{Poisson}(g(f(x)))}$ given an adapted transformation $g$.

**Note that this package is still a WIP**
}

\end{section}

\begin{section}{title="Current implementations"}

Given $f$ a latent GP, or $\{f_i\}$ a collection of latent GPs we have the following implementation

@@list
- Gaussian likelihood : $y \sim f + \epsilon$ where $\epsilon \sim \mathcal{N}(0, \sigma)$
- Bernoulli likelihood : $y \sim \textrm{Bernoulli}(p)$ where $p = \sigma(f)$
- Poisson likleihood : $y \sim \textrm{Poisson}(\lambda)$ where $\lambda = \exp(f)$
- Categorical likelihood : $y \sim \textrm{Categorical}(\pi)$ where $\pi = \textrm{softmax}(\{f_i\})$
@@

\end{section}