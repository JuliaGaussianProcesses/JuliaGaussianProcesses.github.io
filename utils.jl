using PkgPage
using YAML
# Feel free to add whatever custom hfun_* or lx_*
# you might want to use in your site here
#

function hfun_fill_profile()
    team = YAML.load_file("_assets/team.yml"; dicttype=Dict{Symbol, Any})
    s = ""
    for member in team
        s *= """
        <div class="team-row-image">
        <img src="$(member[:photo])" alt="$(member[:name])">
        </div>
        """
        s *= "<div>"
        s *= "<b> $(member[:name]) </b> <br> $(member[:institution]) <br>"
        s *= haskey(member, :website) ? """<a style="white-space: nowrap" href=$(member[:website])> <i class="fa fa-home"></i> </a>""" : ""
        s *= haskey(member, :github) ? """<a style="white-space: nowrap" href="https://github.com/$(member[:github])"> <i class="fa fa-github"></i> </a>""" : ""
        s *= haskey(member, :twitter) ? """<a style="white-space: nowrap" href="https://twitter.com/$(member[:twitter])"> <i class="fa fa-twitter"></i>  </a>""" : ""
        s *= haskey(member, :email) ? """<a style="white-space: nowrap" href="mailto:$(member[:email])"> <i class="fa fa-envelope"></i> </a>""" : ""
        s *= haskey(member, :linkedin) ? """<a style="white-space: nowrap" href="https://www.linkedin.com/in/$(member[:linkedin])"> <i class="fa fa-linkedin"></i> </a>""" : ""
        s *= "</div>"
    end
    return s
end